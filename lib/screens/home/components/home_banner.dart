import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class HomeBannerLarge extends StatelessWidget {
  const HomeBannerLarge({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/bg-1.jpg",
            fit: BoxFit.cover,
          ),
          Container(color: darkColor.withOpacity(0.66)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Discover my Amazing \nArt Space!",
                  style: Theme.of(context).textTheme.headline3!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                ),
                MyBuildAnimatedTextLarge(),
                SizedBox(height: defaultPadding),
                ElevatedButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                        horizontal: defaultPadding * 2,
                        vertical: defaultPadding),
                    backgroundColor: primaryColor,
                  ),
                  child: Text(
                    "EXPLORE NOW",
                    style: TextStyle(color: darkColor),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class HomeBannerSmall extends StatelessWidget {
  const HomeBannerSmall({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/bg-1.jpg",
            fit: BoxFit.cover,
          ),
          Container(color: darkColor.withOpacity(0.66)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Discover my Amazing \nArt Space!",
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                ),
                MyBuildAnimatedTextLarge(),
                SizedBox(height: defaultPadding),
                ElevatedButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                        horizontal: defaultPadding,
                        vertical: defaultPadding / 2),
                    backgroundColor: primaryColor,
                  ),
                  child: Text(
                    "EXPLORE NOW",
                    style: TextStyle(color: darkColor),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MyBuildAnimatedTextLarge extends StatelessWidget {
  const MyBuildAnimatedTextLarge({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      // it applies same style to all the widgets under it
      style: Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: 14),
      child: Row(
        children: [
          FlutterCodedText(),
          SizedBox(width: defaultPadding / 2),
          Text("I build "),
          AnimatedTextKit(
            animatedTexts: [
              TyperAnimatedText(
                "responsive web and mobile app.",
                speed: Duration(milliseconds: 60),
              ),
              TyperAnimatedText(
                "complete e-Commerce app UI.",
                speed: Duration(milliseconds: 60),
              ),
              TyperAnimatedText(
                "Chat app with dark and light theme.",
                speed: Duration(milliseconds: 60),
              ),
            ],
          ),
          SizedBox(width: defaultPadding / 2),
          FlutterCodedText(),
        ],
      ),
    );
  }
}

class MyBuildAnimatedTextSmall extends StatelessWidget {
  const MyBuildAnimatedTextSmall({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: DefaultTextStyle(
        // it applies same style to all the widgets under it
        style: TextStyle(fontSize: 14),
        child: Row(
          children: [
            FlutterCodedText(),
            SizedBox(width: defaultPadding / 2),
            Text("I build "),
            AnimatedTextKit(
              animatedTexts: [
                TyperAnimatedText(
                  "responsive web and mobile app.",
                  speed: Duration(milliseconds: 60),
                ),
                TyperAnimatedText(
                  "complete e-Commerce app UI.",
                  speed: Duration(milliseconds: 60),
                ),
                TyperAnimatedText(
                  "Chat app with dark and light theme.",
                  speed: Duration(milliseconds: 60),
                ),
              ],
            ),
            SizedBox(width: defaultPadding / 2),
            FlutterCodedText(),
          ],
        ),
      ),
    );
  }
}

class FlutterCodedText extends StatelessWidget {
  const FlutterCodedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "<",
        children: [
          TextSpan(
            text: "flutter",
            style: TextStyle(color: primaryColor, fontSize: 14),
          ),
          TextSpan(text: ">"),
        ],
      ),
    );
  }
}
