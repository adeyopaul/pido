import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pidoapp/core/constants/appColors.dart';
import 'package:pidoapp/presentation/views/screens/signIn.dart';
import 'package:pidoapp/presentation/views/screens/signUp.dart';

import '../../../core/constants/appSizes.dart';
import '../../../core/constants/images.dart';
import '../../widgets/appButton.dart';
import '../../widgets/textFormField.dart';
import 'forgottenPassword.dart';

class Welcomeback extends StatelessWidget {
  const Welcomeback({super.key});

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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Welcome back, Adeyo',
                              style: Theme.of(context).textTheme.displayMedium,
                            ),
                            Text(
                              'Please enter your Password to continue.',
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              radius: AppRadius.xlarge,
                              backgroundColor: Theme.of(context).colorScheme.inversePrimary,
                              child: Icon(Icons.person_outline, size: 38.sp, color: Theme.of(context).colorScheme.surfaceContainer,),
                            ),
                            SizedBox(height: 8.h,)
                          ],
                        )
                      ],
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
                        // bottom: AppSpacing.ms,
                      ),
                      child: Textformfield(
                        title: '..........',
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
                        Text(
                          'Sign up',
                          style: Theme.of(context).textTheme.bodyLarge
                              ?.copyWith(fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    SizedBox(height: 16.h),
                    Center(
                      child: GestureDetector(
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
                          'Or',
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 32.h),
                    Center(child: Icon(Icons.fingerprint, size: 64.sp,)),
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
