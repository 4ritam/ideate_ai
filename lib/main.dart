import 'package:flutter/material.dart';
import 'config/routes/routes.dart';
import 'config/themes/themes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IdeateAI',
      theme: lightTheme,
      darkTheme: darkTheme,
      initialRoute: AppRoutes.loading,
      routes: AppRouter().router,
    );
  }
}
