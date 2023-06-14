import 'package:finance_app/common/constants/app_colors.dart';
import 'package:finance_app/common/constants/app_text_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../common/widgets/muilti_text_button.dart';
import '../../common/widgets/primary_button.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.iceWhite,
      body: Align(
        child: Column(
          children: [
            const SizedBox(height: 48.0),
            Expanded(flex: 2, child: Image.asset('assets/images/banner.png')),
            Text(
              'Spend Smarter',
              style: AppTextStyles.mediumText.apply(color: AppColors.greenDark),
            ),
            Text(
              'Save More',
              style: AppTextStyles.mediumText.apply(color: AppColors.greenDark),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
              child: PrimaryButton(
                text: 'Get Started',
                onPressed: () {},
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            MultiTextButton(onPressed: () {}, children: [
              Text('Already have account?',
                  style: AppTextStyles.smallText
                      .apply(color: AppColors.greyLight)),
              Text(' Log in',
                  style: AppTextStyles.smallText
                      .apply(color: AppColors.greenLight))
            ]),
            const SizedBox(
              height: 24.0,
            )
          ],
        ),
      ),
    );
  }
}
