import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_store_app_with_graphql/core/common/animations/animation_do.dart';
import 'package:flutter_store_app_with_graphql/core/common/widgets/text_app.dart';
import 'package:flutter_store_app_with_graphql/core/extensions/context_ext.dart';
import 'package:flutter_store_app_with_graphql/core/functions/translate_word.dart';
import 'package:flutter_store_app_with_graphql/core/language/lang_key.dart';
import 'package:flutter_store_app_with_graphql/core/routes/app_routes.dart';
import 'package:flutter_store_app_with_graphql/core/styles/fonts/font_weight_helper.dart';
import 'package:flutter_store_app_with_graphql/features/auth/widgets/auth_title_info.dart';
import 'package:flutter_store_app_with_graphql/features/auth/widgets/circl_avatar.dart';
import 'package:flutter_store_app_with_graphql/features/auth/widgets/dark_and_lang_buttons.dart';
import 'package:flutter_store_app_with_graphql/features/auth/widgets/sign_up_button.dart';
import 'package:flutter_store_app_with_graphql/features/auth/widgets/sign_up_text_field.dart';

class SignUpScreenBody extends StatelessWidget {
  const SignUpScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 16.w),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const DarkAndLangButtons(),
            SizedBox(
              height: 30.h,
            ),
            AuthTitleInfo(
              title: context.translate(LangKeys.signUp),
              desc: context.translate(LangKeys.welcome),
            ),
            SizedBox(
              height: 10.h,
            ),
            const CircleImageAvatar(),
            SizedBox(
              height: 20.h,
            ),
            const SignUpTextField(),
            SizedBox(
              height: 20.h,
            ),
            const SignUpButton(),
            SizedBox(
              height: 20.h,
            ),
            CustomFadeInRight(
              duration: 600,
              child: TextButton(
                onPressed: () {
                  context.pushReplacementNamed(AppRoutes.loginScreen);
                },
                child: TextApp(
                  text: translateWord(context, LangKeys.youHaveAccount),
                  theme: context.textStyle.copyWith(
                    fontSize: 16.sp,
                    fontWeight: FontWeightHelper.regular,
                    color: context.color.bluePinkLight,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
