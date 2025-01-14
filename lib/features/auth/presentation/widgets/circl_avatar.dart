import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircleImageAvatar extends StatelessWidget {
  const CircleImageAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 40.r,
      backgroundImage: const NetworkImage(
        'https://img.freepik.com/premium-vector/happy-positive-man-showing-gesture-ok-sign-gesture-language-concept-flat-vector-illustration_697837-87.jpg?w=740',
      ),
    );
  }
}
