import 'package:flutter/material.dart';
import 'package:fluttertest/controller/icon_provider.dart';
import 'package:fluttertest/controller/radio_provider.dart';
// import 'package:fluttertest/views/home.dart';
import 'package:fluttertest/views/icon_home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => RadioProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => IconsProvider(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home:
            // ScreenHome(),
            IconsHome(),
      ),
    );
  }
}
