import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/constants/app_colors.dart';
import 'package:portfolio/constants/app_fonts.dart';
import 'package:portfolio/data/navigation_data.dart';
import 'package:portfolio/presentation/homepage/bloc/home_page_bloc.dart';

class NavigationBarWigetDesktop extends StatelessWidget {
  const NavigationBarWigetDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95,
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Heading (unchanged, but with BlocBuilder)
          Expanded(
            flex: 4,
            child: Container(
              padding: const EdgeInsets.only(left: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 30),
                  BlocBuilder<HomePageBloc, HomePageState>(
                    builder: (context, state) {
                      return Text(
                        _getTitle(state), // Dynamic title logic
                        style: AppFonts().poppinWhiteBold32,
                      );
                    },
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: 75,
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors().yellow, width: 4),
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Navigation Links (original style)
          Expanded(
            flex: 6,
            child: Container(
              decoration: BoxDecoration(
                color: AppColors().lightGrey,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                border: Border(
                  bottom: BorderSide(
                    color: AppColors().lightyellow,
                    width: 1.5,
                  ),
                ),
              ),
              height: 95 - 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  for (String i in NavigationData().navigationSection)
                    GestureDetector(
                      onTap: () {
                        print("clicked");
                        _handleNavigationClick(context, i);
                      },
                      child: BlocBuilder<HomePageBloc, HomePageState>(
                        builder: (context, state) {
                          if (state is AboutLoadedState) {
                            return Text(
                              i,
                              style:
                                  i == "About"
                                      ? AppFonts().poppinsYellowBold16
                                      : AppFonts().poppinsWhiteBold16,
                            );
                          } else if (state is ResumeLoadedState) {
                            return Text(
                              i,
                              style:
                                  i == "Resume"
                                      ? AppFonts().poppinsYellowBold16
                                      : AppFonts().poppinsWhiteBold16,
                            );
                          } else if (state is PortfolioLoadedState) {
                            return Text(
                              i,
                              style:
                                  i == "Portfolio"
                                      ? AppFonts().poppinsYellowBold16
                                      : AppFonts().poppinsWhiteBold16,
                            );
                          } else if (state is ContactLoadedState) {
                            return Text(
                              i,
                              style:
                                  i == "Contact"
                                      ? AppFonts().poppinsYellowBold16
                                      : AppFonts().poppinsWhiteBold16,
                            );
                          } else {
                            return Text(
                              i,
                              style:
                                  i == "About"
                                      ? AppFonts().poppinsYellowBold16
                                      : AppFonts().poppinsWhiteBold16,
                            );
                          }
                        },
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Helper: Get title based on state
  String _getTitle(HomePageState state) {
    if (state is AboutLoadedState) return 'About Me';
    if (state is ResumeLoadedState) return 'My Resume';
    if (state is PortfolioLoadedState) return 'Portfolio';
    if (state is ContactLoadedState) return 'Contact';
    return 'About Me'; // Default
  }

  // Helper: Handle navigation clicks
  void _handleNavigationClick(BuildContext context, String section) {
    final bloc = context.read<HomePageBloc>();
    switch (section) {
      case "About":
        bloc.add(AboutClickedEvent());
        break;
      case "Resume":
        bloc.add(ResumeClickedEvent());
        break;
      case "Portfolio":
        bloc.add(PortfolioClickedEvent());
        break;
      case "Contact":
        bloc.add(ContactClickedEvent());
        break;
    }
  }
}
