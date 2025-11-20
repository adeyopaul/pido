import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pidoapp/core/constants/appColors.dart';
import 'package:pidoapp/core/constants/appSizes.dart';
import 'package:pidoapp/core/constants/images.dart';
import 'package:pidoapp/core/constants/theme/textTheme.dart';
import 'package:pidoapp/presentation/views/screens/forgottenPassword.dart';
import 'package:pidoapp/presentation/views/screens/signUp.dart';
import 'package:pidoapp/presentation/widgets/appButton.dart';
import 'package:pidoapp/presentation/widgets/textFormField.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});
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
                      'Sign in',
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                    Text(
                      'Hello, Please enter details to continue.',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: AppSpacing.md),
                      child: Text(
                        'Email address',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: AppSpacing.sm,
                        // bottom: AppSpacing.ms,
                      ),
                      child: Textformfield(
                        title: 'Enter your email address',
                        isPassword: false,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: AppSpacing.sm),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Password',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Forgottenpassword(),
                                ),
                                (Route<dynamic> route) => false,
                              );
                            },
                            child: Text(
                              'Forgot password',
                              style: Theme.of(context).textTheme.bodyLarge
                                  ?.copyWith(fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
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
                    Elevatedbutton(buttonTitle: 'Login', buttonFunction: () {}),
                    SizedBox(height: 16.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don\'t have an account?  ',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Signup(),
                              ),
                                  (Route<dynamic> route) => false,
                            );
                          },
                          child: Text(
                            'Sign up',
                            style: Theme.of(context).textTheme.bodyLarge
                                ?.copyWith(fontWeight: FontWeight.w700),
                          ),
                        ),
                      ],
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
