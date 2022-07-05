import 'package:demo_toctoc/inbox_screen/message_screen/message_screen.dart';
import 'package:flutter/material.dart';

class InboxScreen extends StatelessWidget {
  const InboxScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        centerTitle: true,
        title: const Text(
          'Notification',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MessageScreen()),
              );
            },
            icon: Icon(Icons.message_outlined),
          ),
        ],
      ),
      body: Center(
        child: Text('Inbox screen!'),
      ),
    );
  }
}
