import 'package:demo_toctoc/presentation/auth_screen/login_screen/login_screen.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 120, 0, 80),
              child: Text(
                'Sign up TocToc',
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 20,
            ),
            child: InkWell(
              onTap: () {},
              child: Container(
                color: Color.fromRGBO(240, 240, 240, 1),
                height: 56,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Icon(Icons.email),
                    ),
                    Text('Sign up with Email'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 60,
        width: double.infinity,
        color: Color.fromRGBO(240, 240, 240, 1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Got an account?',
            ),
            SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              child: Text(
                'Log in',
                style: TextStyle(
                  color: Color.fromRGBO(241, 11, 66, 1),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
