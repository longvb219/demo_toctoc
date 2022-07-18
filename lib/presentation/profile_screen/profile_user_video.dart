import 'package:flutter/material.dart';

class UserVideo extends StatelessWidget {
  UserVideo({Key? key}) : super(key: key);
  int userVideoCount = 7;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: userVideoCount,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: MediaQuery.of(context).size.width /
            ((MediaQuery.of(context).size.width * 1.5)),
      ),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(1.0),
          child: Container(
            color: Colors.red,
          ),
        );
      },
    );
  }
}
