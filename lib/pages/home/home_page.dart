import 'package:flutter/material.dart';

import '../../core/config.dart';
import '../../widgets/app_button.dart';
import '../e_learning_things/memorize_test_page.dart';

class HomePage extends StatelessWidget {
  static const String ROUTE_NAME = '/';
  const HomePage({super.key});

  @override
  Widget build(final BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(config.appName),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(20),
                children: [
                  AppButton(
                    text: 'E-Learning Things',
                    onPressed: () {
                      Navigator.pushNamed(context, MemorizeTestPage.ROUTE_NAME);
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                config.environment.name.toUpperCase(),
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
