import 'package:demo_toctoc/presentation/auth_screen/login_screen/login_email_screen.dart';
import 'package:demo_toctoc/presentation/auth_screen/signup_screen/signup_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 120, 0, 80),
              child: Text(
                'Log in TocToc',
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
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginEmailScreen()),
                );
              },
              child: Container(
                color: Color.fromRGBO(240, 240, 240, 1),
                height: 56,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Icon(Icons.email),
                    ),
                    Text('Log in with Email'),
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
              'No account?',
            ),
            SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignupScreen()),
                );
              },
              child: Text(
                'Sign up',
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
