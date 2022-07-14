import 'package:flutter/material.dart';

import 'profile_user_favorite_video.dart';
import 'profile_user_liked_video.dart';
import 'profile_user_private_video.dart';
import 'profile_user_video.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);
  String userName = 'my_username';
  String userDescription = 'This is a description.';
  int numFollowing = 1326;
  int numFollower = 57444;
  int numLiked = 3425976;

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
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          centerTitle: true,
          title: InkWell(
            onTap: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  userName,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Icon(
                  Icons.expand_more,
                  size: 28,
                ),
              ],
            ),
          ),
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
            icon: Icon(Icons.person_add_alt_rounded),
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
              icon: Icon(Icons.remove_red_eye_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu),
            ),
          ],
        ),
        body: ListView(
          children: [
            Container(
              height: 2000,
              child: Column(
                children: [
                  const SizedBox(
                    height: 16,
                  ),
                  Center(
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          clipBehavior: Clip.antiAlias,
                          width: 96,
                          height: 96,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.all(
                              Radius.circular(50),
                            ),
                          ),
                          child: InkWell(
                            onTap: () {},
                            child: Image.network(
                              'https://img.freepik.com/free-vector/businessman-character-avatar-isolated_24877-60111.jpg?w=2000',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  width: 2,
                                  color: Colors.white,
                                  style: BorderStyle.solid,
                                ),
                              ),
                              child: Container(
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.red,
                                ),
                                child: Center(
                                  child: Text(
                                    '+',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 40),
                          child: Text(
                            'Edit profile',
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
                          Icons.lock_outline_rounded,
                          color: Colors.black,
                          size: 24,
                        ),
                      ),
                      Tab(
                        icon: Icon(
                          Icons.bookmark_outline,
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
                        UserVideo(),
                        UserPrivateVideo(),
                        UserFavoriteVideo(),
                        UserLikedVideo(),
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
