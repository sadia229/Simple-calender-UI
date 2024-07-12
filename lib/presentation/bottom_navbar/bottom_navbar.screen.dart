import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../../infrastructure/theme/app.colors.dart';
import '../../infrastructure/theme/assets/app.assets.dart';
import '../network/controllers/network.controller.dart';
import '../shared/widgets/dialog/app_dialog.dart';
import '../shared/widgets/drawer/app_drawer.dart';
import 'components/floating_button.dart';
import 'controllers/bottom_navbar.controller.dart';

class BottomNavbarScreen extends GetView<BottomNavbarController> {
  BottomNavbarScreen({super.key});

  final PageController _pageController = PageController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final NetworkController _network = Get.put(NetworkController());

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return await showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text('অ্যাপটি থেকে বেরিয়ে যাবেন?'),
                content: const Text(
                    'আপনি অ্যাপ থেকে প্রস্থান করতে চান কিনা তা নিশ্চিত করুন।'),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(false),
                    child: const Text('না'),
                  ),
                  TextButton(
                    onPressed: () => SystemNavigator.pop(),
                    child: const Text('হ্যাঁ'),
                  ),
                ],
              ),
            ) ??
            false;
      },
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        key: _scaffoldKey,
        backgroundColor: Colors.white,
        floatingActionButton: Obx(() {
          return _network.connectionType.value == "none"
              ? Container()
              : const HomeFloatingButton();
        }),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterFloat,
        body: Obx(
          () => Stack(
            children: [
              PageView.builder(
                physics: const NeverScrollableScrollPhysics(),
                controller: _pageController,
                onPageChanged: (index) {
                  controller.changeTabPage(index);
                },
                itemCount: controller.pages.length,
                itemBuilder: (context, index) {
                  return controller.pages[index];
                },
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: double.infinity,
                  height: 88,
                  color: Colors.white,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      height: 68,
                      child: Obx(() {
                        controller.currentIndex.value;
                        final currentIndex = controller.currentIndex.value;
                        return BottomNavigationBar(
                          type: BottomNavigationBarType.fixed,
                          items: [
                            BottomNavigationBarItem(
                              icon: _BottomWidgets(
                                image: AppAssets.light.icons.homeIcon,
                                showTopImage: currentIndex == 0 ? true : false,
                              ),
                              label: '',
                            ),
                            BottomNavigationBarItem(
                              icon: Padding(
                                padding: const EdgeInsets.only(right: 32.0),
                                child: _BottomWidgets(
                                  image: AppAssets.light.icons.calenderIcon,
                                  showTopImage:
                                      currentIndex == 1 ? true : false,
                                ),
                              ),
                              label: '',
                            ),
                            BottomNavigationBarItem(
                              icon: Padding(
                                padding: const EdgeInsets.only(left: 32.0),
                                child: _BottomWidgets(
                                  image: AppAssets.light.icons.timelineIcon,
                                  showTopImage:
                                      currentIndex == 2 ? true : false,
                                ),
                              ),
                              label: '',
                            ),
                            BottomNavigationBarItem(
                              icon: _BottomWidgets(
                                image: AppAssets.light.icons.profileIcon,
                                showTopImage: currentIndex == 3 ? true : false,
                              ),
                              label: '',
                            ),
                          ],
                          currentIndex: controller.currentIndex.value,
                          elevation: 0,
                          backgroundColor: Colors.white,
                          selectedItemColor: AppColors.light.primary,
                          unselectedItemColor: AppColors.light.primary5,
                          onTap: (index) {
                            controller.changeTabPage(index);
                            _pageController.animateToPage(
                              index,
                              duration: const Duration(milliseconds: 30),
                              curve: Curves.easeInOut,
                            );
                          },
                        );
                      }),
                    ),
                  ),
                ),
              ),
              Obx(() {
                return _network.connectionType.value == "none"
                    ? Positioned.fill(
                        child: Container(
                          color: Colors.black.withOpacity(0.5),
                        ),
                      )
                    : const SizedBox();
              }),
              Obx(() {
                return _network.connectionType.value == "none"
                    ? Positioned.fill(
                        child: AppDialog(
                          image: AppAssets.dark.icons.noNetworkIcon,
                          title: "নেটওয়ার্ক সংযোগ নেই ",
                          subtitle: "দয়া করে ইন্টারনেট চেক করুন",
                          buttonText: "আবার চেষ্টা করুন ",
                          isShowButton: true,
                          onTap: () {},
                        ),
                      )
                    : const SizedBox();
              }),
            ],
          ),
        ),
        drawer: const AppDrawer(),
      ),
    );
  }
}

class _BottomWidgets extends StatelessWidget {
  final String image;
  final bool showTopImage;

  const _BottomWidgets({
    super.key,
    required this.image,
    required this.showTopImage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 4.0),
          child: Image.asset(
            image,
            height: 24,
            width: 24,
          ),
        ),
        if (showTopImage == true)
          CircleAvatar(
            radius: 3,
            backgroundColor: AppColors.light.primary2,
          ),
        if (showTopImage == false)
          const CircleAvatar(
            radius: 3,
            backgroundColor: Colors.transparent,
          ),
      ],
    );
  }
}
