import 'package:flutter/material.dart';
import 'package:portfolio/constants/app_colors.dart';
import 'package:portfolio/constants/app_fonts.dart';

class ContactInfoTileWidgetDesktop extends StatelessWidget {
  final String title;
  final String data;
  final Icon icon;

  const ContactInfoTileWidgetDesktop({
    super.key,
    required this.title,
    required this.data,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Icon Image
        Container(
          width: 46,
          height: 46,
          decoration: BoxDecoration(
            color: AppColors().grey,
            borderRadius: BorderRadius.circular(8),

            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [AppColors().lightGrey, Colors.transparent],
            ),
          ),
          padding: EdgeInsets.all(8),
          child: icon,
        ),

        // Sized Box
        SizedBox(width: 10),

        // Details
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // title
              Text(title, style: AppFonts().poppinlightWhiteNormal12),
              // data
              Text(
                data,
                style: AppFonts().poppinWhiteNormal14,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                softWrap: false,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
