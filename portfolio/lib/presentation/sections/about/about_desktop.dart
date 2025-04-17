import 'package:flutter/material.dart';
import 'package:portfolio/constants/app_fonts.dart';
import 'package:portfolio/data/about_me_data.dart';
import 'package:portfolio/presentation/widgets/specialization_tile_widget_desktop.dart';

class AboutDesktop extends StatelessWidget {
  const AboutDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Professional Summary
          Text(
            AboutMeData().professionalSummary,
            style: AppFonts().poppinWhiteNormal15,
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 40),

          // What I'm Doing
          Text("What I'm Doing", style: AppFonts().poppinWhiteBold24),
          SizedBox(height: 40),

          // Skills section
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 30,
              crossAxisSpacing: 30,
              childAspectRatio: 3 / 1,
            ),
            itemCount: AboutMeData().specializations.length,
            itemBuilder: (context, index) {
              return SpecializationTileWidgetDesktop(
                title: AboutMeData().specializations[index].name,
                description: AboutMeData().specializations[index].name,
                image: AboutMeData().specializations[index].imageUrl,
              );
            },
          ),
        ],
      ),
    );
  }
}
