import 'package:flutter/material.dart';
import 'package:flutter_ppb_1/data/dev_data.dart';
import 'package:flutter_ppb_1/utils/app_strings.dart';

class SecondView extends StatelessWidget {
  const SecondView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    ThemeData theme = Theme.of(context);

    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: size.height * .02,
          ),
          Container(
            margin: EdgeInsets.all(size.height * .006),
            padding: EdgeInsets.symmetric(
                horizontal: size.height * .02, vertical: size.height * .01),
            width: size.width,
            decoration: BoxDecoration(
              color: theme.cardColor,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.secondScreenBio,
                  style: theme.textTheme.displayLarge,
                ),
                SizedBox(
                  height: size.height * .02,
                ),
                Text(
                  DevData.devBio,
                  style: theme.textTheme.displayMedium,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(size.height * .006),
            padding: EdgeInsets.symmetric(
                horizontal: size.height * .02, vertical: size.height * .01),
            width: size.width,
            decoration: BoxDecoration(
              color: theme.cardColor,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.secondScreenHobbies,
                  style: theme.textTheme.displayLarge,
                ),
                SizedBox(
                  height: size.height * .02,
                ),
                SizedBox(
                  width: size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(
                      DevData.devData.hobbies.length,
                      (index) => Text(
                        "${index + 1} ${DevData.devData.hobbies[index]}",
                        style: theme.textTheme.displayMedium,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(size.height * .006),
            padding: EdgeInsets.symmetric(
                horizontal: size.height * .02, vertical: size.height * .01),
            width: size.width,
            decoration: BoxDecoration(
              color: theme.cardColor,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.secondScreenContact,
                  style: theme.textTheme.displayLarge,
                ),
                SizedBox(
                  height: size.height * .02,
                ),
                Text(
                  DevData.devData.email,
                ),
                Text(
                  DevData.devData.phone,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
