import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_store_app_with_graphql/core/common/animations/animation_do.dart';
import 'package:flutter_store_app_with_graphql/core/common/widgets/custom_linear_button.dart';
import 'package:flutter_store_app_with_graphql/core/common/widgets/text_app.dart';
import 'package:flutter_store_app_with_graphql/core/extensions/context_ext.dart';
import 'package:flutter_store_app_with_graphql/core/language/lang_key.dart';
import 'package:flutter_store_app_with_graphql/core/styles/fonts/font_weight_helper.dart';
import 'package:flutter_store_app_with_graphql/features/auth/screens/login_screen.dart';

class DarkAndLangButtons extends StatelessWidget {
  const DarkAndLangButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomFadeInRight(
          duration: 400,
          child: CustomLinearButton(
            onPressed: () {},
            child: const Icon(
              Icons.light_mode_rounded,
              color: Colors.white,
            ),
          ),
        ),
        CustomFadeInRight(
          duration: 400,
          child: CustomLinearButton(
            height: 44.h,
            width: 100.w,
            onPressed: () {},
            child: TextApp(
              text: context.translate(LangKeys.language),
              theme: context.textStyle.copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeightHelper.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
