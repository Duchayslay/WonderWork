import 'package:flutter/material.dart';
import 'package:wonderwork/data/constants.dart';
import 'package:wonderwork/views/pages/container_widget.dart';
import 'package:wonderwork/views/pages/course_page.dart';
import 'package:wonderwork/views/widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> list = [
      KValue.basicLayout,
      KValue.cleanUi,
      KValue.fixBugs,
      KValue.keyConcepts,
    ];
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 5.0),
            HeroWidget(title: 'Flutter Hero', nextPage: CoursePage()),
            ...List.generate(list.length, (index) {
              return ContainerWidget(
                title: list.elementAt(index),
                description: 'Description $index',
              );
            }),
          ],
        ),
      ),
    );
  }
}
