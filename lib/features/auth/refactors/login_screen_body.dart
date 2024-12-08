import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_store_app_with_graphql/core/common/widgets/text_app.dart';
import 'package:flutter_store_app_with_graphql/core/extensions/context_ext.dart';
import 'package:flutter_store_app_with_graphql/core/functions/translate_word.dart';
import 'package:flutter_store_app_with_graphql/core/language/lang_key.dart';
import 'package:flutter_store_app_with_graphql/core/styles/fonts/font_weight_helper.dart';
import 'package:flutter_store_app_with_graphql/features/auth/widgets/auth_title_info.dart';

import 'package:flutter_store_app_with_graphql/features/auth/widgets/dark_and_lang_buttons.dart';
import 'package:flutter_store_app_with_graphql/features/auth/widgets/login_button.dart';
import 'package:flutter_store_app_with_graphql/features/auth/widgets/login_text_field.dart';

class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 16.w),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const DarkAndLangButtons(),
            SizedBox(
              height: 50.h,
            ),
            AuthTitleInfo(
              title: context.translate(LangKeys.login),
              desc: context.translate(LangKeys.welcome),
            ),
            SizedBox(
              height: 50.h,
            ),
            const LoginTextFormField(),
            SizedBox(
              height: 50.h,
            ),
            const LoginButton(),
            SizedBox(
              height: 30.h,
            ),
            TextApp(
              text: translateWord(context, LangKeys.createAccount),
              theme: context.textStyle.copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeightHelper.regular,
                color: context.color.textColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
