import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pidoapp/presentation/views/screens/signIn.dart';
import 'package:pidoapp/presentation/views/screens/welcomeBack.dart';

import '../../../core/constants/appSizes.dart';
import '../../../core/constants/images.dart';
import '../../widgets/appButton.dart';
import '../../widgets/textFormField.dart';

class Forgottenpassword extends StatefulWidget {
  const Forgottenpassword({super.key});

  @override
  State<Forgottenpassword> createState() => _ForgottenpasswordState();
}

class _ForgottenpasswordState extends State<Forgottenpassword> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      // backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              width: double.infinity,
              height: height * 1,
              color: Theme.of(context).primaryColor,
              child: Align(
                alignment: Alignment.topCenter,
                child: Column(
                  children: [
                    SizedBox(height: 70.h),
                    Image.asset(AppImages.appLogoALlWhite),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: height * 0.85,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(AppRadius.medium),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  top: AppSpacing.xxl,
                  left: AppSpacing.md,
                  right: AppSpacing.md,
                  bottom: AppSpacing.md,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Forgot Password',
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                    Text(
                      'Please reset Password',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: AppSpacing.md),
                      child: Text(
                        'New Password',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: AppSpacing.sm,
                        // bottom: AppSpacing.ms,
                      ),
                      child: Textformfield(
                        title: '..........',
                        isPassword: true,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: AppSpacing.sm),
                      child: Text(
                        'Confirm Password',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: AppSpacing.sm,
                        bottom: AppSpacing.ms,
                      ),
                      child: Textformfield(
                        title: '............',
                        isPassword: true,
                      ),
                    ),
                    SizedBox(height: 32.h),
                    Elevatedbutton(buttonTitle: 'Reset Password', buttonFunction: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Welcomeback(),
                        ),
                            (Route<dynamic> route) => false,
                      );
                    }),
                    SizedBox(height: 16.h),
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Signin(),
                            ),
                                (Route<dynamic> route) => false,
                          );
                        },
                        child: Text(
                          'Return to Log in',
                          style: Theme.of(context).textTheme.bodyLarge
                              ?.copyWith(fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
