import 'package:flutter/material.dart';

import '../data/dev_data.dart';
import '../utils/app_color.dart';
import '../utils/app_strings.dart';
import '../widget/skills_box.dart';
import '../widget/skills_progress.dart';

class FirstView extends StatelessWidget {
  const FirstView({
    super.key,
    required this.onNextPage
  });

  final VoidCallback onNextPage;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ThemeData theme = Theme.of(context);
    return Column(
      children: [
        // empty space
        SizedBox(
          height: size.height * 0.05,
        ),

        // developer avatar
        Container(
          // bordering image avatar
          padding: EdgeInsets.all(size.height * .01),
          decoration: BoxDecoration(
            color: theme.cardColor,
            shape: BoxShape.circle,
          ),
          child: CircleAvatar(
            // 12% based on phone height
            radius: size.height * .12,

            // based on custom color theme
            backgroundColor: AppColors.appPrimaryColor,

            // image from Github profile
            backgroundImage: NetworkImage(AppStrings.profileImageUrl),
          ),
        ),

        // empty space
        SizedBox(
          height: size.height * 0.03,
        ),

        // Developer Name
        Text(
          DevData.devData.name,
          style: theme.textTheme.displayLarge,
        ),

        // empty space
        SizedBox(
          height: size.height * 0.02,
        ),

        // Developer Skills
        Container(
          margin: const EdgeInsets.symmetric(vertical: 0,horizontal: 10),
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            alignment: WrapAlignment.center,
            spacing: size.width * .05,
            runSpacing: size.width * .03,
            children: List.generate(
                DevData.devData.skillsAndProgress.length,
                // Container Widget extracted to SkillsBox Widget
                // ==============================================
                // (index) => Container(
                //   padding: EdgeInsets.symmetric(horizontal: 10,vertical: 8),
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(30),
                //     color: AppColors.appPrimaryColor,
                //   ),
                //   child: Text(DevData.devData.skillsAndProgress[index].name))),
                (index) => SkillsBox(
                      title: DevData.devData.skillsAndProgress[index].name,
                    )),
          ),
        ),

        // empty space
        SizedBox(
          height: size.height * 0.02,
        ),

        // Skills and Progress
        Padding(
          padding: EdgeInsets.symmetric(vertical: size.height * .03),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: List.generate(
                DevData.devData.skillsAndProgress.length,
                (index) => SkillsProgressBar(
                      title: DevData.devData.skillsAndProgress[index].name,
                      progress:
                          DevData.devData.skillsAndProgress[index].progress,
                    )),
          ),
          // child: Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   crossAxisAlignment: CrossAxisAlignment.center,
          //   children: List.generate(
          //       DevData.devData.skillsAndProgress.length, (index) =>
          //       Column(
          //         children: [
          //           // Title Skills
          //           Text(DevData.devData.skillsAndProgress[index].name,
          //           style: theme.textTheme.displaySmall,),
          //
          //           // Empty Space
          //           const SizedBox(height: 5,),
          //
          //           // Progress Percent Indicator from:
          //           // https://pub.dev/packages/percent_indicator/install
          //           // ==================================================
          //           LinearPercentIndicator(
          //             lineHeight: size.height * .02,
          //             width: size.width * .8,
          //             alignment: MainAxisAlignment.center,
          //             barRadius: const Radius.circular(50),
          //             percent: DevData.devData.skillsAndProgress[index].progress,
          //             progressColor: AppColors.appPrimaryColor,
          //             backgroundColor: AppColors.appPrimaryColor.withOpacity(.2),
          //           ),
          //
          //           // Empty Space
          //           const SizedBox(height: 10,),
          //         ],
          //       )
          //   ),
          // ),
        ),

        // responsive empty space
        Expanded(child: Container()),

        // Next Page Icon
        IconButton(
          onPressed: onNextPage,
          icon: const Icon(Icons.arrow_downward_outlined),
          color: theme.canvasColor,
        ),
        SizedBox(height: size.height * .05,)
      ],
    );
  }
}
