import 'package:flutter/material.dart';
import 'package:flutter_youtube/core/notifiers.dart';
import 'package:flutter_youtube/pages/home_page.dart';
import 'package:flutter_youtube/widget_tree.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isDarkNotifier,
      builder: (context, isDark, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Art Gallery',
          theme: ThemeData(
              brightness: isDark ? Brightness.dark : Brightness.light,
              primarySwatch: Colors.blue,
              useMaterial3: true),
          home: const WidgetTree(),
        );
      },
    );
  }
}
