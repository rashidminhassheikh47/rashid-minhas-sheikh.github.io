import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_blog_site/responsive.dart';

import '../main/main_screen.dart';
import 'components/home_banner.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: MobileMainScreen(
        children: [
          HomeBannerSmall(),
          // That's it for part 1
        ],
      ),
      mobileLarge: MobileMainScreen(
        children: [
          HomeBannerSmall(),
          // That's it for part 1
        ],
      ),
      tablet: MobileMainScreen(
        children: [
          HomeBannerLarge(),
          // That's it for part 1
        ],
      ),
      desktop: TabletMainScreen(
        children: [
          HomeBannerLarge(),
          // That's it for part 1
        ],
      ),
    );
  }
}
