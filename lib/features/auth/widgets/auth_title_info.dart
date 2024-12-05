import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_store_app_with_graphql/core/common/animations/animation_do.dart';
import 'package:flutter_store_app_with_graphql/core/common/widgets/text_app.dart';
import 'package:flutter_store_app_with_graphql/core/extensions/context_ext.dart';
import 'package:flutter_store_app_with_graphql/core/styles/fonts/font_weight_helper.dart';

class AuthTitleInfo extends StatelessWidget {
  const AuthTitleInfo({required this.title, required this.desc, super.key});
  final String title;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return CustomFadeInDown(
      duration: 400,
      child: Column(
        children: [
          TextApp(
            text: title,
            theme: context.textStyle.copyWith(
              fontSize: 24.sp,
              color: context.color.textColor,
              fontWeight: FontWeightHelper.bold,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          TextApp(
            text: desc,
            theme: context.textStyle.copyWith(
              fontSize: 14.sp,
              color: context.color.textColor,
              fontWeight: FontWeightHelper.medium,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
