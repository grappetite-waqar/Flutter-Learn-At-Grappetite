import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'core/config.dart';
import 'firebase_options.dart';
import 'routes/main_routes.dart';
import 'themes/themes.dart';
import 'pages/home/home_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await dotenv.load(
    fileName: 'config/${config.environment}.config',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(final BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: config.appName,
      theme: getTheme(),
      darkTheme: getTheme(),
      initialRoute: HomePage.ROUTE_NAME,
      onGenerateRoute: onGenerateRoute,
    );
  }
}
