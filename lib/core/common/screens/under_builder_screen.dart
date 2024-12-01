import 'package:flutter/material.dart';

import 'package:flutter_store_app_with_graphql/core/styles/images/app_images.dart';

class UnderBuilderScreen extends StatelessWidget {
  const UnderBuilderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        child: const Image(image: AssetImage(AppImages.underBuilderImage)),
      ),
    );
  }
}
