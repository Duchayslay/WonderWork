import 'package:flutter/material.dart';
import 'package:wonderwork/data/notifiers.dart';
import 'package:wonderwork/views/widgets/navbar_widget.dart';
import 'package:wonderwork/views/pages/home_page.dart';
import 'package:wonderwork/views/pages/profile_page.dart';

List<Widget> pages = [HomePage(), ProfilePage()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(child: Icon(Icons.menu)),
      appBar: AppBar(title: const Text('Home'), centerTitle: true),

      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, selectedPage, child) {
          return pages.elementAt(selectedPage);
        },
      ),

      bottomNavigationBar: NavbarWidget(),
    );
  }
}
