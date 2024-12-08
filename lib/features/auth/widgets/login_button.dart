import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_store_app_with_graphql/core/common/animations/animation_do.dart';
import 'package:flutter_store_app_with_graphql/core/common/widgets/custom_linear_button.dart';
import 'package:flutter_store_app_with_graphql/core/common/widgets/text_app.dart';
import 'package:flutter_store_app_with_graphql/core/extensions/context_ext.dart';
import 'package:flutter_store_app_with_graphql/core/functions/translate_word.dart';
import 'package:flutter_store_app_with_graphql/core/language/lang_key.dart';
import 'package:flutter_store_app_with_graphql/core/styles/fonts/font_weight_helper.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFadeInRight(
      duration: 600,
      child: CustomLinearButton(
        width: MediaQuery.of(context).size.width,
        onPressed: () {},
        child: TextApp(
          text: translateWord(
            context,
            LangKeys.login,
          ),
          theme: context.textStyle.copyWith(
            fontSize: 18.sp,
            fontWeight: FontWeightHelper.bold,
          ),
        ),
      ),
    );
  }
}
