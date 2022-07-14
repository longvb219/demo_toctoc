import 'package:demo_toctoc/presentation/home_screen/home_user_button.dart';
import 'package:flutter/material.dart';

import '../home_user_caption.dart';
import '../home_video_screen.dart';

class DemoPage1 extends StatelessWidget {
  const DemoPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          VideoScreen(),
          UserButton(),
          UserCaption(),
        ],
      ),
    );
  }
}
