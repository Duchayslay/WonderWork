import 'package:flutter/material.dart';
import 'package:wonderwork/views/widget_tree.dart';
import 'package:lottie/lottie.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Lottie.asset(
            '/home/hoang/wonderwork/assets/lotties/manfrombook.json',
          ),
          FittedBox(
            child: Text(
              'Welcome to WonderWork',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 50.0,
                letterSpacing: 50.0,
              ),
            ),
          ),
          FilledButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return WidgetTree();
                  },
                ),
              );
            },
            child: Text('Get Started'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return WidgetTree();
                  },
                ),
              );
            },
            child: Text('Login'),
          ),
        ],
      ),
    );
  }
}
