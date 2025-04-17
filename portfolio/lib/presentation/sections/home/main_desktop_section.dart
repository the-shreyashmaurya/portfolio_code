import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/constants/app_colors.dart';
import 'package:portfolio/presentation/homepage/bloc/home_page_bloc.dart';
import 'package:portfolio/presentation/sections/about/about_desktop.dart';
import 'package:portfolio/presentation/sections/contact/contact_desktop.dart';
import 'package:portfolio/presentation/sections/resume/resume_desktop.dart';
import 'package:portfolio/presentation/widgets/navigation_bar_wiget_desktop.dart';
import 'package:smooth_scroll_multiplatform/smooth_scroll_multiplatform.dart';

class MainDesktopSection extends StatelessWidget {
  const MainDesktopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: AppColors().grey,
        border: Border.all(color: AppColors().lightyellow, width: 1.5),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Column(
        children: [
          // Navigation Bar
          NavigationBarWigetDesktop(),

          // Smooth Scrollable Content
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(30),
              child: DynMouseScroll(
                durationMS: 300,
                scrollSpeed: 2.0,
                animationCurve: Curves.easeOut,
                builder:
                    (context, controller, physics) => Scrollbar(
                      controller: controller,
                      thumbVisibility: true,
                      child: SingleChildScrollView(
                        controller: controller,
                        physics: physics,
                        child: BlocBuilder<HomePageBloc, HomePageState>(
                          builder: (context, state) {
                            if (state is AboutLoadedState) {
                              return AboutDesktop();
                            } else if (state is ResumeLoadedState) {
                              return ResumeDesktop();
                            } else if (state is PortfolioLoadedState) {
                              return ContactDesktop();
                            } else if (state is ContactLoadedState) {
                              return ContactDesktop();
                            } else {
                              return AboutDesktop();
                            }
                          },
                        ),
                      ),
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
