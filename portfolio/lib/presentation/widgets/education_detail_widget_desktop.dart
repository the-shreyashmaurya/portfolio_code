
import 'package:flutter/material.dart';
import 'package:portfolio/constants/app_fonts.dart';
import 'package:portfolio/data/resume_data.dart';

class EducationDetailDesktopWidget extends StatelessWidget {
  const EducationDetailDesktopWidget({
    super.key,
    required this.item,
  });

  final EducationData item;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(item.degree, style: AppFonts().poppinsWhiteBold16),
        const SizedBox(height: 4),
        Text(item.year, style: AppFonts().poppinsYellowNormal15),
        const SizedBox(height: 6),
        Text(
          item.institution,
          style: AppFonts().poppinWhiteNormal15,
        ),
        if (item.description != null) 
          Text(item.description!),
        
        SizedBox(height: 30,)
      ],
    );
  }
}