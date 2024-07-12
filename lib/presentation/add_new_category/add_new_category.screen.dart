import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker_bdaya/flutter_datetime_picker_bdaya.dart';
import 'package:get/get.dart';
import 'package:sadiaassignmentproject/infrastructure/utils/screen_extensions.dart';
import '../../infrastructure/theme/app.colors.dart';
import '../../infrastructure/theme/app.theme.dart';
import '../../infrastructure/theme/assets/app.assets.dart';
import '../shared/widgets/app_textfield.dart';
import '../shared/widgets/button/app_button.dart';
import '../shared/widgets/dialog/app_dialog.dart';
import 'controllers/add_new_category.controller.dart';

class AddNewCategoryScreen extends GetView<AddNewCategoryController> {
  const AddNewCategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'নতুন যোগ করুন',
          style: AppTheme.light.textTheme.bodyLarge?.copyWith(
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  const _Header(title: "অনুচ্ছেদ", subtitle: "৪৫ শব্দ"),
                  const AppTextField(
                      hintText: "অনুচ্ছেদ লিখুন", showSuffixIcon: false),
                  SizedBox(height: 20.0),
                  const _Header(title: "অনুচ্ছেদের বিভাগ", subtitle: ""),
                  const AppTextField(
                      hintText: "অনুচ্ছেদের বিভাগ নির্বাচন করুন",
                      showSuffixIcon: true),
                  const SizedBox(height: 20.0),
                  const _Header(title: "তারিখ ও সময়", subtitle: ""),
                  AppTextField(
                    hintText: "নির্বাচন করুন",
                    showSuffixIcon: true,
                    showPrefixIcon: true,
                    prefix: Icons.calendar_month_outlined,
                    suffixOnTap: () {
                      DatePickerBdaya.showDatePicker(context,
                          showTitleActions: true,
                          minTime: DateTime(2018, 3, 5),
                          maxTime: DateTime(2019, 6, 7), onChanged: (date) {
                        print('change $date');
                      }, onConfirm: (date) {
                        print('confirm $date');
                      }, currentTime: DateTime.now(), locale: LocaleType.bn);
                    },
                  ),
                  const SizedBox(height: 20.0),
                  const _Header(title: "স্থান", subtitle: ""),
                  const AppTextField(
                    hintText: "নির্বাচন করুন",
                    showSuffixIcon: true,
                    showPrefixIcon: true,
                    prefix: Icons.location_on_outlined,
                  ),
                  const SizedBox(height: 20.0),
                  const _Header(
                      title: "অনুচ্ছেদের বিবরণ", subtitle: "১২০ শব্দ"),
                  const AppTextField(
                      hintText: "কার্যক্রমের বিবরণ লিখুন", maxLine: 4),
                  const SizedBox(height: 20.0),
                ],
              ),
            ),
            SliverToBoxAdapter(
                child: SizedBox(height: context.screenHeight * 0.18)),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(24).copyWith(top: 0),
        child: AppButton(
          buttonName: 'সংরক্ষন করুন',
          onTap: () {
            showDialog(
              context: context,
              builder: (_) => AppDialog(
                image: AppAssets.light.icons.successfulIcon,
                title: "নতুন অনুচ্ছেদ সংরক্ষন",
                subtitle:
                    "আপনার সময়রেখাতে নতুন অনুচ্ছেদ সংরক্ষণ সম্পুর্ন হয়েছে ",
                isShowButton: true,
                buttonText: "আরও যোগ করুন",
                onTap: () {
                  Get.back();
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  final String title;
  final String subtitle;

  const _Header({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: AppTheme.light.textTheme.bodyLarge?.copyWith(
              color: AppColors.light.fonts,
            ),
          ),
          Text(
            subtitle,
            style: AppTheme.light.textTheme.bodyMedium?.copyWith(
              color: AppColors.light.fonts,
            ),
          ),
        ],
      ),
    );
  }
}
