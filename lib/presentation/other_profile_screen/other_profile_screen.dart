import 'package:demo_toctoc/presentation/other_profile_screen/other_profile_favorite_video.dart';
import 'package:demo_toctoc/presentation/other_profile_screen/other_profile_user_video.dart';
import 'package:flutter/material.dart';

class OtherProfileScreen extends StatefulWidget {
  OtherProfileScreen({Key? key}) : super(key: key);

  @override
  State<OtherProfileScreen> createState() => _OtherProfileScreenState();
}

class _OtherProfileScreenState extends State<OtherProfileScreen> {
  String userName = 'other_username';

  String userDescription = 'ABC Entertainment. 5-year contract.\nGood.\nBad.';

  int numFollowing = 11326;

  int numFollower = 987444;

  int numLiked = 12425976;

  bool isInFollowList = false;

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
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          centerTitle: true,
          title: Text(
            userName,
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          actions: [
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
              icon: Icon(Icons.notifications_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert),
            ),
          ],
        ),
        body: ListView(
          children: [
            Container(
              height: 1000,
              child: Column(
                children: [
                  const SizedBox(
                    height: 16,
                  ),
                  Center(
                    child: Container(
                      clipBehavior: Clip.antiAlias,
                      width: 96,
                      height: 96,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                      child: Image.network(
                        'https://i.pinimg.com/736x/56/49/70/564970f574b3cbd9f11a08833634fd13.jpg',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Center(
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        '@$userName',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 96,
                        child: Column(
                          children: [
                            Text(
                              '${numberRender(numFollowing)}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Following',
                              style: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(134, 135, 139, 1),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: Color.fromRGBO(134, 135, 139, 1),
                        width: 1,
                        height: 18,
                      ),
                      Container(
                        width: 96,
                        child: Column(
                          children: [
                            Text(
                              '${numberRender(numFollower)}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Followers',
                              style: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(134, 135, 139, 1),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: Color.fromRGBO(134, 135, 139, 1),
                        width: 1,
                        height: 18,
                      ),
                      Container(
                        width: 96,
                        child: Column(
                          children: [
                            Text(
                              '${numberRender(numLiked)}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Liked',
                              style: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(134, 135, 139, 1),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  (isInFollowList)
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 30),
                                child: Text(
                                  'Send message',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color.fromRGBO(227, 227, 228, 1),
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  isInFollowList = false;
                                });
                              },
                              child: Container(
                                padding: EdgeInsets.all(10),
                                child: Icon(
                                  Icons.check_circle_outline,
                                  size: 32,
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color.fromRGBO(227, 227, 228, 1),
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                padding: EdgeInsets.all(10),
                                child: Icon(
                                  Icons.arrow_drop_down_sharp,
                                  size: 32,
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color.fromRGBO(227, 227, 228, 1),
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                            ),
                          ],
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  isInFollowList = true;
                                });
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 60),
                                child: Text(
                                  'Follow',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  border: Border.all(
                                    color: Color.fromRGBO(227, 227, 228, 1),
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                padding: EdgeInsets.all(10),
                                child: Icon(
                                  Icons.arrow_drop_down_sharp,
                                  size: 32,
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color.fromRGBO(227, 227, 228, 1),
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                            ),
                          ],
                        ),
                  const SizedBox(
                    height: 16,
                  ),
                  Center(
                    child: Text(
                      userDescription,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TabBar(
                    tabs: [
                      Tab(
                        icon: Icon(
                          Icons.grid_3x3,
                          color: Colors.black,
                          size: 24,
                        ),
                      ),
                      Tab(
                        icon: Icon(
                          Icons.favorite_border,
                          color: Colors.black,
                          size: 24,
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        OtherUserVideo(),
                        OtherUserFavoriteVideo(),
                      ],
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
