import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_store_app_with_graphql/core/app/app_cubit/app_cubit.dart';
import 'package:flutter_store_app_with_graphql/core/app/bloc_observer.dart';
import 'package:flutter_store_app_with_graphql/core/common/animations/animation_do.dart';
import 'package:flutter_store_app_with_graphql/core/common/widgets/custom_linear_button.dart';
import 'package:flutter_store_app_with_graphql/core/common/widgets/text_app.dart';
import 'package:flutter_store_app_with_graphql/core/extensions/context_ext.dart';
import 'package:flutter_store_app_with_graphql/core/language/app_localization.dart';
import 'package:flutter_store_app_with_graphql/core/language/lang_key.dart';
import 'package:flutter_store_app_with_graphql/core/styles/fonts/font_weight_helper.dart';
import 'package:flutter_store_app_with_graphql/main.dart';
import 'package:flutter_store_app_with_graphql/store.dart';

class DarkAndLangButtons extends StatelessWidget {
  const DarkAndLangButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<AppCubit>(context);
    return BlocBuilder(
      bloc: cubit,
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomFadeInRight(
              duration: 400,
              child: CustomLinearButton(
                onPressed: cubit.changeThemeMode,
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
                onPressed: () {
                  if (AppLocalizations.of(context)!.isEnLocale) {
                    cubit.toArabic();
                  } else {
                    cubit.toEnglish();
                  }
                },
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
      },
    );
  }
}