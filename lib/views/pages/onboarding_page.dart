import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:wonderwork/data/constants.dart';
import 'package:wonderwork/views/pages/login_page.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset(
                '/home/slay/wonderwork/assets/lotties/profileusercard.json',
              ),
              Text(
                'hi, glad to see you here, let\'s get started the journey of your wonderwork',
                style: KTextStyle.titleText,
                textAlign: TextAlign.justify,
              ),
              FilledButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginPage(title: 'Login');
                      },
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                ),
                child: Text('Next'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
