import 'package:flutter/material.dart';

class DemoPage1 extends StatelessWidget {
  const DemoPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text('Following'),
      ),
      body: Container(
        child: Center(
          child: Image.network(
            'https://res.cloudinary.com/fleetnation/image/private/c_fit,w_1120/g_south,l_text:style_gothic2:%C2%A9%20Blue,o_20,y_10/g_center,l_watermark4,o_25,y_50/v1547329278/wdvssqelmstkfgoyxac5.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
