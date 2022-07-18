import 'package:demo_toctoc/presentation/other_profile_screen/other_profile_favorite_video.dart';
import 'package:demo_toctoc/presentation/other_profile_screen/other_profile_user_information.dart';
import 'package:demo_toctoc/presentation/other_profile_screen/other_profile_user_video.dart';
import 'package:flutter/material.dart';

class OtherProfileScreen extends StatefulWidget {
  OtherProfileScreen({Key? key}) : super(key: key);

  @override
  State<OtherProfileScreen> createState() => _OtherProfileScreenState();
}

class _OtherProfileScreenState extends State<OtherProfileScreen> {
  String userName = 'other_username';

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
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverToBoxAdapter(
                child: OtherUserInformation(),
              ),
            ];
          },
          body: Column(
            children: [
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
      ),
    );
  }
}
