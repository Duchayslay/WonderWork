import 'package:flutter/material.dart';
import 'package:wonderwork/data/notifiers.dart';
import 'package:wonderwork/views/pages/welcome_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          ListTile(
            title: Text('Logout'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    selectedPageNotifier.value = 0;
                    return WelcomePage();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
