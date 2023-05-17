import 'package:flutter/material.dart';
import 'package:flutter_youtube/core/notifiers.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Column(
        children: const [
          CircleAvatar(
            backgroundImage: AssetImage('images/_ZB4tE1q_400x400.jpg'),
            radius: 70,
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text(
              'Aryan Porwal',
              style: TextStyle(fontSize: 20),
            ),
          ),
          ListTile(
            leading: Icon(Icons.web),
            title: Text(
              'github.com/seniorporwal',
              style: TextStyle(fontSize: 20),
            ),
          ),
          ListTile(
            leading: Icon(Icons.mail),
            title: Text(
              'medium.com/seniorporwal',
              style: TextStyle(fontSize: 20),
            ),
          ),
          ListTile(
            leading: Icon(Icons.notes),
            title: Text(
              'twitter.com/seniorporwal',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          isDarkNotifier.value = !isDarkNotifier.value;
        },
        child: ValueListenableBuilder(
          valueListenable: isDarkNotifier,
          builder: (context, isDark, child) {
            if (!isDark) {
              return const Icon(Icons.dark_mode);
            } else {
              return const Icon(Icons.light_mode);
            }
          },
        ),
      ),
    );
  }
}
