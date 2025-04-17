import 'package:flutter/material.dart';

class SkillDesktopWidget extends StatelessWidget {
  const SkillDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(constraints: 
    BoxConstraints(
      minHeight: 70,
      maxHeight: 100,
      minWidth: 70,
      maxWidth: 100
    ),child: Container(color: Colors.yellow,),
    
    );
  }
}