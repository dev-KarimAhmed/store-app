import 'package:flutter/material.dart';
import 'package:flutter_store_app_with_graphql/core/extensions/context_ext.dart';

class TestScreenTwo extends StatelessWidget {
  const TestScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.pop();
          },
          child: const Text('Back'),
        ),
      ),
    );
  }
}
