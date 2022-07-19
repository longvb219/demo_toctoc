import 'package:demo_toctoc/resources/styles.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../resources/colors.dart';

class UserInformation extends StatelessWidget {
  UserInformation({Key? key}) : super(key: key);
  var profileStyle = ProfileStyle();

  final user = FirebaseAuth.instance.currentUser!;
  String userName = 'my_username';
  String userDescription = 'This is a description.\nDescription.';
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
    return Column(
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
                decoration: const BoxDecoration(
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
                        color: white,
                        style: BorderStyle.solid,
                      ),
                    ),
                    child: Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: followButton,
                      ),
                      child: const Center(
                        child: Text(
                          '+',
                          style: TextStyle(
                            color: white,
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
              style: profileStyle.username,
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 96,
              child: Column(
                children: [
                  Text(
                    numberRender(numFollowing),
                    style: profileStyle.reactionNumber,
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Following',
                    style: profileStyle.reactionLabel,
                  ),
                ],
              ),
            ),
            Container(
              color: profileInteractLabel,
              width: 1,
              height: 18,
            ),
            SizedBox(
              width: 96,
              child: Column(
                children: [
                  Text(
                    numberRender(numFollower),
                    style: profileStyle.reactionNumber,
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Followers',
                    style: profileStyle.reactionLabel,
                  ),
                ],
              ),
            ),
            Container(
              color: profileInteractLabel,
              width: 1,
              height: 18,
            ),
            SizedBox(
              width: 96,
              child: Column(
                children: [
                  Text(
                    numberRender(numLiked),
                    style: profileStyle.reactionNumber,
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Liked',
                    style: profileStyle.reactionLabel,
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
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: buttonBorder,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  'Edit profile',
                  style: profileStyle.buttonText,
                ),
              ),
            ),
            const SizedBox(
              width: 6,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: buttonBorder,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Icon(
                  Icons.arrow_drop_down_sharp,
                  size: 32,
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
            // Test auth email.
            '$userDescription\n${user.email}',
            textAlign: TextAlign.center,
            style: profileStyle.userDescription,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
