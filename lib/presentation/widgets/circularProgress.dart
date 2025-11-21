import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircularStepIndicator extends StatelessWidget {
  final int currentStep;
  final int totalSteps;
  final double size;          // 64
  final double innerRadius;   // 15.36
  final double strokeWidth;
  final Color activeColor;
  final Color backgroundColor;

  const CircularStepIndicator({
    super.key,
    required this.currentStep,
    required this.totalSteps,
    this.size = 90,
    this.innerRadius = 20,
    this.strokeWidth = 16,
    this.activeColor = const Color(0xFF1E88E5),
    this.backgroundColor = const Color(0xFFE0E0E0),
  });

  @override
  Widget build(BuildContext context) {
    double progress = currentStep / totalSteps;

    return SizedBox(
      width: size,
      height: size,
      child: Stack(
        alignment: Alignment.center,
        children: [
          /// Background Circle
          CircularProgressIndicator(
            value: 1,
            strokeWidth: strokeWidth,
            valueColor: AlwaysStoppedAnimation(backgroundColor),
          ),

          /// Active Progress Circle
          CircularProgressIndicator(
            value: progress,
            strokeWidth: strokeWidth,
            valueColor: AlwaysStoppedAnimation(activeColor),
            backgroundColor: Colors.transparent,
          ),

          /// Inner Circle (same logic as CircleAvatar radius)
          CircleAvatar(
            radius: innerRadius, // 15.36
            backgroundColor: Colors.white,
            child: Text(
              "$currentStep/$totalSteps",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
