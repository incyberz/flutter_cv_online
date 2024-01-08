import 'package:flutter/material.dart';

class ContactMeBox extends StatelessWidget {
  const ContactMeBox({
    super.key,
    required this.title,
    required this.icon,
  });

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ThemeData theme = Theme.of(context);
    return Card(
      // color: theme.canvasColor,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Icon(
              icon,
              size: 30,
              color: theme.cardColor,
            ),
            const SizedBox(width: 10,),
            Text(title,style: theme.textTheme.bodyMedium,)
          ],
        ),
      ),
    );
  }
}
