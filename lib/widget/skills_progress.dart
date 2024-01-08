import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../utils/app_color.dart';

class SkillsProgressBar extends StatelessWidget {
  const SkillsProgressBar({
    super.key,
    required this.title,
    required this.progress,
  });

  final String title;
  final double progress;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ThemeData theme = Theme.of(context);
    return Column(
      children: [
        // Title Skills
        Text(title,
          style: theme.textTheme.displaySmall,),

        // Empty Space
        const SizedBox(height: 5,),

        // Progress Percent Indicator from:
        // https://pub.dev/packages/percent_indicator/install
        // ==================================================
        LinearPercentIndicator(
          lineHeight: size.height * .02,
          width: size.width * .8,
          alignment: MainAxisAlignment.center,
          barRadius: const Radius.circular(50),
          percent: progress,
          progressColor: AppColors.appPrimaryColor,
          backgroundColor: AppColors.appPrimaryColor.withOpacity(.2),
        ),

        // Empty Space
        const SizedBox(height: 10,),
      ],
    );
  }
}