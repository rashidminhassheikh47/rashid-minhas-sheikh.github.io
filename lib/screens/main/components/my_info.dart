import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: Color(0xFF242430),
        child: Column(
          children: [
            Spacer(flex: 2),
            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) => Hero(
                          tag: 'img',
                          child: Container(
                            padding: EdgeInsets.all(30),
                            color: Color(0xFF242430),
                            margin: EdgeInsets.all(100),
                            child: Image(
                              image: AssetImage("assets/images/profimage.png"),
                            ),
                          ),
                        ));
              },
              child: Hero(
                tag: 'img',
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("assets/images/profimage.png"),
                ),
              ),
            ),
            Spacer(),
            Text(
              "Rashid Minhas Sheikh",
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Text(
              "Flutter Developer & Founder of \n The Flutter Code",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
