import 'package:flutter/material.dart';

import '../../../infrastructure/theme/app.colors.dart';
import '../../../infrastructure/theme/assets/app.assets.dart';

class HomeFloatingButton extends StatelessWidget {
  const HomeFloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.only(bottom: 30.0),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFFE7E7E7),
      ),
      child: Container(
        padding: const EdgeInsets.all(4.0),
        //margin: const EdgeInsets.only(bottom: 30.0),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            colors: [
              AppColors.light.primary,
              AppColors.light.primary2,
            ],
          ),
        ),
        child: FloatingActionButton.extended(
          isExtended: true,
          elevation: 0,
          onPressed: () {},
          label: Image.asset(AppAssets.light.icons.cameraIcon, height: 32),
          backgroundColor: Colors.transparent,
        ),
      ),
    );
  }
}
