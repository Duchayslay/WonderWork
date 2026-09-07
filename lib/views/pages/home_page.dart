import 'package:flutter/material.dart';
import 'package:wonderwork/data/constants.dart';
import 'package:wonderwork/views/pages/container_widget.dart';
import 'package:wonderwork/views/widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            HeroWidget(title: 'Flutter Hero'),
            Column(
              children: List.generate(2, (index) {
                return ContainerWidget(
                  title: 'Title $index',
                  description: 'Description $index',
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
