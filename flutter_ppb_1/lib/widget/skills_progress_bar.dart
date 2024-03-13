import 'package:flutter/material.dart';
import 'package:flutter_ppb_1/utils/app_color.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SkillProgressBar extends StatelessWidget {
  const SkillProgressBar({
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
    return Padding(
      padding: EdgeInsets.symmetric(vertical: size.height * .015),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(title, style: theme.textTheme.displayMedium),
          const SizedBox(
            height: 10,
          ),
          LinearPercentIndicator(
            lineHeight: size.height * .02,
            width: size.width * .8,
            alignment: MainAxisAlignment.center,
            barRadius: const Radius.circular(50),
            percent: progress,
            progressColor: AppColor.appPrimaryColor,
            backgroundColor: AppColor.appPrimaryColor.withOpacity(.2),
          ),
        ],
      ),
    );
  }
}
