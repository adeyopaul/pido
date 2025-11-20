import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pidoapp/core/constants/appSizes.dart';
import 'package:pidoapp/presentation/views/screens/signIn.dart';
import 'package:pidoapp/presentation/views/screens/signUpContactDetails.dart';
import 'package:pidoapp/presentation/views/screens/signUpCreatePassword.dart';
import 'package:pidoapp/presentation/views/screens/signUpPersonalDetails.dart';
import 'package:pidoapp/presentation/views/screens/signUpVerification.dart';
import 'package:pidoapp/presentation/widgets/appButton.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final PageController _pageController = PageController();
  final int _pageControllerCount = 0;
  final bool isThirdPage = false;
  final bool isLastPage = false;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSpacing.lg),
          child: Stack(
            children: [
              PageView(
                controller: _pageController,
                physics: NeverScrollableScrollPhysics(),
                onPageChanged: (index){
                  setState(() {
                    isThirdPage == 2;
                    isThirdPage == 3;
                  });
                },
                children: [
                  Signuppersonaldetails(),
                  Signupcontactdetails(),
                  Signupverification(),
                  Signupcreatepassword(),
                ],
              ),
              Positioned(
                top: height * 0.70,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    isThirdPage ? Elevatedbutton(
                      buttonTitle: 'Verify OTP',
                      isEmpty: false,
                      buttonFunction: () {
                        _pageController.nextPage(duration: Duration(milliseconds: 200), curve: Curves.bounceInOut);
                      },
                    ) :isLastPage ? Elevatedbutton(
                      buttonTitle: 'Proceed to Dashboard',
                      isEmpty: false,
                      buttonFunction: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Signin()));
                      },
                    ) :
                    Elevatedbutton(buttonTitle: 'Next', buttonFunction: (){
                      _pageController.nextPage(
                        duration: Duration(microseconds: 3),
                        curve: Curves.bounceInOut,
                      );
                    }),
                    SizedBox(height: 16.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account? ',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(builder: (context) => Signin()),
                              (Route<dynamic> route) => false,
                            );
                          },
                          child: Text(
                            'Log in',
                            style: Theme.of(context).textTheme.bodyLarge
                                ?.copyWith(fontWeight: FontWeight.w700),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
