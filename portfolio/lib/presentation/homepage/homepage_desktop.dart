import 'package:flutter/material.dart';
import 'package:portfolio/presentation/about/about_desktop.dart';

class HomepageDesktop extends StatefulWidget {
  const HomepageDesktop({super.key});

  @override
  State<HomepageDesktop> createState() => _HomepageWebState();
}

class _HomepageWebState extends State<HomepageDesktop> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Left Bar
        Flexible(
          flex: 1,
          child: Container(
            color: Colors.cyan,
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const AboutDesktop();
                    },
                  ),
                );
              },

              child: Text("About"),
            ),
          ),
        ),

        // Main Scroll
        Flexible(flex: 4, child: Container(color: Colors.amber)),
      ],
    );
  }
}
