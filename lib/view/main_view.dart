import 'package:flutter/material.dart';

// import 'package:simple_cv_online/data/dev_data.dart';
// import 'package:simple_cv_online/utils/app_color.dart';
// import 'package:simple_cv_online/utils/app_strings.dart';
import 'package:simple_cv_online/view/first_view.dart';
import 'package:simple_cv_online/view/second_view.dart';

// import '../widget/skills_box.dart';
// import '../widget/skills_progress.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  late PageController pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pageController.dispose();
  }

  // on Next Page Function
  void onNextPage(int page) {
    pageController.animateToPage(page,
        duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {
    // For making app responsive for all the phone sizes
    Size size = MediaQuery.of(context).size;

    // For accessing application theme both Light and Dark Mode
    ThemeData theme = Theme.of(context);

    return Scaffold(
      body: SizedBox(
        width: size.width,
        height: size.height,
        // ================================================
        // Column and children are moved to first_view.dart
        // ================================================
        // child of responsive SizedBox is PageView
        child: PageView(
          controller: pageController,
          scrollDirection: Axis.vertical,
          children: [
            FirstView(
              onNextPage: () => onNextPage(1),
            ),
            SecondView(
                onNextPage: () => onNextPage(0)),
          ],
        ),
      ),
    );
  }
}

// Reusable Widget for skillsProgress
// ===========================================
// Code being cut to new file skills_progress.dart
// ===========================================
// class SkillsProgressBar extends StatelessWidget {
//   const SkillsProgressBar({
//     super.key,
//     required this.title,
//     required this.progress,
//   });
//
//   final String title;
//   final double progress;
//
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     ThemeData theme = Theme.of(context);
//     return Column(
//       children: [
//         // Title Skills
//         Text(title,
//         style: theme.textTheme.displaySmall,),
//
//         // Empty Space
//         const SizedBox(height: 5,),
//
//         // Progress Percent Indicator from:
//         // https://pub.dev/packages/percent_indicator/install
//         // ==================================================
//         LinearPercentIndicator(
//           lineHeight: size.height * .02,
//           width: size.width * .8,
//           alignment: MainAxisAlignment.center,
//           barRadius: const Radius.circular(50),
//           percent: progress,
//           progressColor: AppColors.appPrimaryColor,
//           backgroundColor: AppColors.appPrimaryColor.withOpacity(.2),
//         ),
//
//         // Empty Space
//         const SizedBox(height: 10,),
//       ],
//     );
//   }
// }

// Reusable Widget for skills
// ===========================================
// Code being cut to new file skills_box.dart
// ===========================================
// class SkillsBox extends StatelessWidget {
//   const SkillsBox({
//     super.key,
//     required this.title,
//   });
//
//   final String title;
//
//   @override
//   Widget build(BuildContext context) {
//     ThemeData theme = Theme.of(context);
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 8),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(30),
//         color: AppColors.appPrimaryColor,
//       ),
//       child: Text(title,style: theme.textTheme.displayMedium,));
//   }
// }
