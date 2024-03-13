import 'package:flutter/material.dart';
import 'package:flutter_ppb_1/data/dev_data.dart';
import 'package:flutter_ppb_1/utils/app_color.dart';
import 'package:flutter_ppb_1/utils/app_strings.dart';
import 'package:flutter_ppb_1/widget/skills_box.dart';
import 'package:flutter_ppb_1/widget/skills_progress_bar.dart';

class FirstView extends StatelessWidget {
  const FirstView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    ThemeData theme = Theme.of(context);
    return Column(
      children: [
        // Empty space
        SizedBox(
          height: size.height * .1,
        ),
        Container(
          padding: EdgeInsets.all(size.height * .01),
          decoration: BoxDecoration(
            color: theme.cardColor,
            shape: BoxShape.circle,
          ),
          child: CircleAvatar(
            radius: size.width * 0.15,
            backgroundColor: AppColor.appPrimaryColor,
            backgroundImage: NetworkImage(AppStrings.profileImageUrl),
          ),
        ),
        // Empty space
        SizedBox(
          height: size.height * .02,
        ),

        Text(
          "Fahmi Muhazir",
          style: theme.textTheme.displayLarge,
        ),

        SizedBox(
          height: size.height * .02,
        ),

        Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          alignment: WrapAlignment.center,
          spacing: size.width * .02,
          runSpacing: size.width * .02,
          children: List.generate(
            DevData.devData.skillsAndProgress.length,
            (index) => SkillsBox(
              title: DevData.devData.skillsAndProgress[index].skill,
            ),
          ),
        ),

        SizedBox(
          height: size.height * .02,
        ),

        Column(
          children: List.generate(
            DevData.devData.skillsAndProgress.length,
            (index) => SkillProgressBar(
              title: DevData.devData.skillsAndProgress[index].skill,
              progress: DevData.devData.skillsAndProgress[index].progress,
            ),
          ),
        ),
      ],
    );
  }
}
