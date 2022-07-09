import 'package:flutter/material.dart';

class UserCaption extends StatelessWidget {
  String username = '@username';
  String caption = 'This is a caption.';
  List hashtag = <String>[
    '#flutter',
    '#tiktok',
    '#clone',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            InkWell(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      'Đi tới trang cá nhân!',
                    ),
                    duration: Duration(seconds: 2),
                  ),
                );
              },
              child: Text(
                username,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: caption,
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 0.6),
                      fontSize: 14,
                    ),
                  ),
                  TextSpan(
                    text: ' ${hashtag.join(' ')}',
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
    );
  }
}
