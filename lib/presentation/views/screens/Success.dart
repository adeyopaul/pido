import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pidoapp/core/constants/appSizes.dart';
import 'package:pidoapp/presentation/views/screens/bottomNav/payments.dart';
import 'package:pidoapp/presentation/widgets/appButton.dart';

class Success extends StatelessWidget {
  const Success({super.key});

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
        padding: EdgeInsets.symmetric(horizontal: AppSpacing.lg),
        child: Column(
          children: [
            SizedBox(height: 30.h),
            CircleAvatar(
              radius: 60.sp,
              backgroundColor: Colors.green[600],
              child: CircleAvatar(
                backgroundColor: Colors.green,
                radius: 50.sp,
                child: Icon(Icons.check, size: 80.sp),
              ),
            ),
            SizedBox(height: 20.h),
            Text(
              'Transaction Successful!',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.black,
                height: 1.2,
                fontSize: 16.sp,
              ),
            ),
            SizedBox(height: 300.h,),
            Elevatedbutton(buttonTitle: 'Okay, got it', buttonFunction: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Payments()));
            }),
          ],
        ),
      ),
    );
  }
}
