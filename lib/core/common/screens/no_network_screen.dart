import 'package:flutter/material.dart';
import 'package:flutter_store_app_with_graphql/core/styles/images/app_images.dart';

class NoNetworkScreen extends StatelessWidget {
  const NoNetworkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        child: const Image(image: AssetImage(AppImages.noNetowrk)),
      ),
    );
  }
}
