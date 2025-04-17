import 'package:flutter/material.dart';
import 'package:portfolio/constants/app_colors.dart';
import 'package:portfolio/constants/app_fonts.dart';
import 'package:portfolio/data/resume_data.dart';
import 'package:portfolio/presentation/widgets/education_detail_widget_desktop.dart';
import 'package:portfolio/presentation/widgets/skill_desktop_widget.dart';

class ResumeDesktop extends StatelessWidget {
  const ResumeDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Education - Heading
        Row(
          children: [
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
              child: Icon(Icons.menu_book_outlined, color: AppColors().yellow),
            ),
            SizedBox(width: 10),
            Text('Education', style: AppFonts().poppinWhiteBold24),
          ],
        ),
        const SizedBox(height: 30),

        // Educational Details
        Column(
          children: List.generate(ResumeData().education.length, (index) {
            final item = ResumeData().education[index];
            final isLast = index == ResumeData().education.length - 1;

            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Timeline + Dot
                SizedBox(
                  width: 42, // Fixed width for the timeline column
                  child: Column(
                    children: [
                      // Top line (hidden for first item)
                      if (index != 0)
                        Container(
                          height: 10,
                          width: 2,
                          color: AppColors().lightGrey,
                        ),
                      // Circle
                      Container(
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors().yellow,
                          border: Border.all(
                            color: AppColors().lightGrey,
                            width: 2,
                          ),
                        ),
                      ),
                      // Bottom line (hide for last)
                      if (!isLast)
                        Container(
                          height: isLast ? 0 : 90,
                          width: 2,
                          color: AppColors().lightGrey,
                        ),
                    ],
                  ),
                ),

                // Content
                Container(
                  margin: const EdgeInsets.only(
                    left: 16,
                  ), // Consistent left margin
                  child: EducationDetailDesktopWidget(item: item),
                ),
              ],
            );
          }),
        ),

        // Sized Box
        SizedBox(height: 30),
        // Experience  - Heading
        Row(
          children: [
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
              child: Icon(Icons.work_outline, color: AppColors().yellow),
            ),
            SizedBox(width: 10),
            Text('Experience', style: AppFonts().poppinWhiteBold24),
          ],
        ),
        const SizedBox(height: 30),

        // Experience Details
        Column(
          children: List.generate(ResumeData().experience.length, (index) {
            final item = ResumeData().experience[index];
            final isLast = index == ResumeData().experience.length - 1;

            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Timeline + Dot
                SizedBox(
                  width: 42, // Fixed width for the timeline column
                  child: Column(
                    children: [
                      // Top line (hidden for first item)
                      if (index != 0)
                        Container(
                          height: 10,
                          width: 2,
                          color: AppColors().lightGrey,
                        ),
                      // Circle
                      Container(
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors().yellow,
                          border: Border.all(
                            color: AppColors().lightGrey,
                            width: 2,
                          ),
                        ),
                      ),
                      // Bottom line (hide for last)
                      if (!isLast)
                        Container(
                          height: isLast ? 0 : 90,
                          width: 2,
                          color: AppColors().lightGrey,
                        ),
                    ],
                  ),
                ),

                // Content
                Container(
                  margin: const EdgeInsets.only(
                    left: 16,
                  ), // Consistent left margin
                  child: EducationDetailDesktopWidget(item: item),
                ),
              ],
            );
          }),
        ),

        // Skills - Heading
        const SizedBox(height: 30),

        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Text('My Skills', style: AppFonts().poppinWhiteBold24),
        ),

        // Skills Gridview
        Container(
          padding: EdgeInsets.all(30),
          child: GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 80,
            ),
            itemCount: ResumeData().skills.length,
            itemBuilder: (context, index) {
              return SkillDesktopWidget();
            },
          ),
        ),
      ],
    );
  }
}
