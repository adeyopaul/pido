import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pidoapp/core/constants/appColors.dart';
import 'package:pidoapp/core/constants/appSizes.dart';

import '../../widgets/otp.dart';
import 'Success.dart';

class Confirmdetails extends StatefulWidget {
  const Confirmdetails({super.key});

  @override
  State<Confirmdetails> createState() => _ConfirmdetailsState();
}

class _ConfirmdetailsState extends State<Confirmdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Confirm Details',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppSpacing.lg,
          vertical: AppSpacing.sm,
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.borderTextFormLight),
                borderRadius: BorderRadius.circular(AppRadius.small),
                color: AppColors.mainCardLight,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 20.h),
                  Text(
                    'NGN: 300,000.00',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 24.sp,
                      height: 1.2,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.food_bank_outlined),
                      SizedBox(width: 5.w),
                      Text(
                        'Access Bank',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          height: 1.2,
                          fontSize: 16.sp,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Adeyo Paul',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                          height: 1.2,
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(width: 5.w),
                      Text(
                        '19203948585',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          height: 1.2,
                          fontSize: 16.sp,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25.h),
                ],
              ),
            ),
            SizedBox(height: 30.h),
            Text(
              'Enter Transaction PIN',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.black,
                height: 1.2,
                fontSize: 16.sp,
              ),
            ),
            SizedBox(height: 16.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Otp(),
                SizedBox(width: 10.w),
                Otp(),
                SizedBox(width: 10.w),
                Otp(),
                SizedBox(width: 10.w),
                Otp(),
              ],
            ),
            SizedBox(height: 30.h),
            Text(
              'Or',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.black,
                height: 1.2,
                fontSize: 13.sp,
              ),
            ),
            SizedBox(height: 32.h),
            Center(
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Success()));
                },
                child: Icon(Icons.fingerprint, size: 48.sp),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
