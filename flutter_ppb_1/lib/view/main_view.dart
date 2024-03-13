import 'package:flutter/material.dart';
import 'package:flutter_ppb_1/view/first_view.dart';
import 'package:flutter_ppb_1/view/second_view.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: PageView(
          controller: pageController,
          scrollDirection: Axis.vertical,
          children: [
            const FirstView(),
            SecondView(),
          ],
        ),
      ),
    );
  }
}
