import 'package:demo_toctoc/styles.dart';
import 'package:flutter/material.dart';

class UserButton extends StatefulWidget {
  const UserButton({Key? key}) : super(key: key);

  @override
  State<UserButton> createState() => _UserButtonState();
}

class _UserButtonState extends State<UserButton> {
  bool related = true;
  bool following = false;
  bool isLiked = false;
  bool isFavorited = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text(
                  'Chức năng này hiện đang trong giai đoạn phát triển!!',
                ),
                duration: Duration(seconds: 2),
              ),
            );
          },
          icon: Icon(
            Icons.tv,
            size: 30,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              size: 30,
            ),
          ),
        ],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  following = true;
                  related = false;
                });
              },
              child: Text(
                'Following',
                textAlign: TextAlign.end,
                style: homeTopFocus(following),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            SizedBox(
              width: 2,
              height: 20,
              child: Container(
                color: Color.fromRGBO(255, 255, 255, 0.2),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  following = false;
                  related = true;
                });
              },
              child: Text(
                'Related',
                textAlign: TextAlign.start,
                style: homeTopFocus(related),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            alignment: Alignment(1, 1),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.account_circle,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        isLiked = !isLiked;
                      });
                    },
                    icon: (isLiked)
                        ? Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 40,
                          )
                        : Icon(
                            Icons.favorite,
                            color: Colors.white,
                            size: 40,
                          ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.chat_bubble,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        isFavorited = !isFavorited;
                      });
                    },
                    icon: (isFavorited)
                        ? Icon(
                            Icons.dashboard_customize,
                            color: Colors.yellow,
                            size: 40,
                          )
                        : Icon(
                            Icons.dashboard_customize,
                            color: Colors.white,
                            size: 40,
                          ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.share,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.disc_full,
                      color: Colors.white,
                      size: 40,
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
      ),
    );
  }
}
