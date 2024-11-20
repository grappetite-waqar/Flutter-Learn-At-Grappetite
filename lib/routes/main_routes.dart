import 'package:flutter/material.dart';

import '../pages/e_learning_things/memorize_test_page.dart';
import '../pages/home/home_page.dart';

MaterialPageRoute generateMaterialPageRoute({
  required final Widget Function(BuildContext) builder,
}) {
  return MaterialPageRoute(builder: builder);
}

Route<dynamic>? onGenerateRoute(final RouteSettings settings) {
  return generateMaterialPageRoute(
    builder: (final context) => _onGenerateRoute(
      context,
      settings,
    ),
  );
}

Widget _onGenerateRoute(
  final BuildContext context,
  final RouteSettings settings,
) {
  switch (settings.name) {
    case HomePage.ROUTE_NAME:
      return const HomePage();
    case MemorizeTestPage.ROUTE_NAME:
      return const MemorizeTestPage();
  }

  throw Exception('Route "${settings.name} not handled"');
}
