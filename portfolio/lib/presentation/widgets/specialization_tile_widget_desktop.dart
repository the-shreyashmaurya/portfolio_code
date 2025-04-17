// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:portfolio/constants/app_colors.dart';
import 'package:portfolio/constants/app_fonts.dart';

class SpecializationTileWidgetDesktop extends StatelessWidget {
  final String title;
  final String description;
  final String image;

  const SpecializationTileWidgetDesktop({
    super.key,
    required this.title,
    required this.description,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors().grey,
        borderRadius: BorderRadius.circular(20),
        border: Border(
          top: BorderSide(color: AppColors().lightyellow, width: 1.5),
          left: BorderSide(color: AppColors().lightyellow, width: 1.5),
        ),

        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [AppColors().lightGrey, AppColors().darkerGrey],
        ),
      ),
      padding: EdgeInsets.all(30),
      child: Row(
        children: [
          // Image
          Expanded(flex: 1, child: SizedBox(width: 40, height: 40)),

          // Describe
          Expanded(
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Title
                Text(title, style: AppFonts().poppinWhiteBold18),

                SizedBox(height: 10,),

                // Description
                Text(
                  description,
                  style: AppFonts().poppinWhiteNormal15,
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
