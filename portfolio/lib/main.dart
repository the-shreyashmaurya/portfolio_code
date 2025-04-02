import 'package:flutter/material.dart';
import 'package:portfolio/presentation/homepage/homepage_desktop.dart';
import 'package:portfolio/presentation/homepage/homepage_mobile.dart';
import 'package:portfolio/presentation/homepage/homepage_tablet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 1024) {
            return const HomepageDesktop();
          } else if (constraints.maxWidth > 600) {
            return const HomepageTablet();
          } else {
            return const HomepageMobile();
          }
        },
      ),
    );
  }
}
