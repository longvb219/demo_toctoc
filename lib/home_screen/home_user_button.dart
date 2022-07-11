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

  int numLiked = 2526353;
  int numComment = 23295;
  int numFavorited = 12;
  int numShared = 2301;

  String numberRender(int a) {
    if (a > 1000000) {
      return '${(a / 100000).round() / 10}M';
    } else if (a > 10000) {
      return '${(a / 100).round() / 10}K';
    } else {
      return '$a';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
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
                    color: Colors.white,
                  ),
                ),
                Row(
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
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: AlignmentDirectional.bottomEnd,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 8,
                    ),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            clipBehavior: Clip.hardEdge,
                            height: 48,
                            width: 48,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(50),
                              ),
                              border: Border.all(
                                width: 2,
                                color: Colors.white,
                                style: BorderStyle.solid,
                              ),
                            ),
                            child: Image.network(
                              'https://byuc.files.wordpress.com/2012/07/avat-2.jpg',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 24,
                          child: IconButton(
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text(
                                    'Followed!',
                                  ),
                                  duration: Duration(seconds: 2),
                                ),
                              );
                            },
                            icon: const Icon(
                              Icons.add_circle,
                              color: Color.fromRGBO(234, 67, 89, 1),
                              size: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
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
                    height: 4,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 8,
                    ),
                    child: Text(
                      numberRender(numLiked),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
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
                    height: 4,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 8,
                    ),
                    child: Text(
                      numberRender(numComment),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
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
                    height: 4,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 8,
                    ),
                    child: Text(
                      numberRender(numFavorited),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
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
                    height: 4,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 8,
                    ),
                    child: Text(
                      numberRender(numShared),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 32,
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
        ],
      ),
    );
  }
}
