import 'package:flutter/material.dart';
import 'package:simple_cv_online/data/dev_data.dart';
import 'package:simple_cv_online/utils/app_strings.dart';

import '../widget/contact_me_box.dart';

class SecondView extends StatelessWidget {
  const SecondView({super.key, required this.onNextPage});

  final VoidCallback onNextPage;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ThemeData theme = Theme.of(context);
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: size.height * 0.05,
          ),

          // Tentang Saya
          Container(
            margin: EdgeInsets.all(size.height * .01),
            width: size.width,
            // height: 100,
            decoration: BoxDecoration(
                color: theme.cardColor,
                // color: Colors.red,
                borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    AppStrings.secondScreenBio,
                    style: theme.textTheme.displayMedium,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    DevData.devData.bio,
                    style: theme.textTheme.bodyMedium,
                  )
                ],
              ),
            ),
          ),

          // Hobbies
          Container(
            margin: EdgeInsets.all(size.height * .01),
            width: size.width,
            // height: 100,
            decoration: BoxDecoration(
                color: theme.cardColor,
                // color: Colors.red,
                borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    AppStrings.secondScreenHobbies,
                    style: theme.textTheme.displayMedium,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(
                        DevData.devData.hobbies.length,
                        (index) => Text(
                          "${index + 1}. ${DevData.devData.hobbies[index]}",
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),

          // Contact
          Container(
            margin: EdgeInsets.all(size.height * .01),
            width: size.width,
            // height: 100,
            decoration: BoxDecoration(
                color: theme.cardColor,
                // color: Colors.red,
                borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    AppStrings.secondScreenContact,
                    style: theme.textTheme.displayMedium,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ContactMeBox(
                    icon: Icons.mail,
                    title: DevData.devData.mail,
                  ),
                  ContactMeBox(
                    icon: Icons.phone,
                    title: DevData.devData.number,
                  )
                ],
              ),
            ),
          ),


          // responsive empty space
          Expanded(child: Container()),

          // Next Page Icon
          IconButton(
            onPressed: onNextPage,
            icon: const Icon(Icons.arrow_upward),
            color: theme.canvasColor,
          ),
          SizedBox(height: size.height * .05,)        ],
      ),
    );
  }
}

