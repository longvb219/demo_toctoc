import 'package:flutter/material.dart';

class UserCaption extends StatelessWidget {
  const UserCaption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            alignment: Alignment(1, -1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  '@username',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'This is a caption.',
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 0.6),
                          fontSize: 14,
                        ),
                      ),
                      TextSpan(
                        text: ' #flutter #tiktok #clone',
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          'Chức năng này hiện đang trong giai đoạn phát triển!!',
                        ),
                        duration: Duration(seconds: 2),
                      ),
                    );
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.my_library_music,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'This is a sound - From ABCD.',
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 56,
        ),
      ],
    );
  }
}
