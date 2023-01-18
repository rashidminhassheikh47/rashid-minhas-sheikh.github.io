import 'package:flutter/material.dart';

import '../../constants.dart';
import 'components/side_menu.dart';

class MobileMainScreen extends StatelessWidget {
  const MobileMainScreen({Key? key, required this.children}) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      drawer: SideMenu(),
      body: Container(
        constraints: BoxConstraints(maxWidth: maxWidth),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Expanded(
            //   flex: 2,
            //   child: SideMenu(),
            // ),
            SizedBox(width: defaultPadding),
            Expanded(
              flex: 7,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ...children,
                    // our footer
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TabletMainScreen extends StatelessWidget {
  const TabletMainScreen({Key? key, required this.children}) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: SideMenu(),
              ),
              SizedBox(width: defaultPadding),
              Expanded(
                flex: 7,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ...children,
                      // our footer
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
