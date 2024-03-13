import 'package:flutter/material.dart';
import 'package:flutter_ppb_1/utils/app_color.dart';

class SkillsBox extends StatelessWidget {
  const SkillsBox({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: AppColor.appPrimaryColor,
      ),
      child: Text(
        title,
        style: theme.textTheme.displayMedium,
      ),
    );
  }
}
