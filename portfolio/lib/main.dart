import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/presentation/homepage/bloc/home_page_bloc.dart';
import 'package:portfolio/presentation/homepage/homepage_desktop.dart';
import 'package:portfolio/presentation/homepage/homepage_mobile.dart';
import 'package:portfolio/presentation/homepage/homepage_tablet.dart';

// void main() {
//   runApp(const MyApp());
// }

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => HomePageBloc()),
        // other BLoCs...
      ],
      child: MyApp(),
    ),
  );
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shreyash Maurya',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      debugShowCheckedModeBanner: false,
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
