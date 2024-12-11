 import 'package:flutter/material.dart';

import 'package:flutter_store_app_with_graphql/core/language/app_localization.dart';

String translateWord(BuildContext context, String langKey) {
    return AppLocalizations.of(context)!.translate(langKey).toString();
  }
  