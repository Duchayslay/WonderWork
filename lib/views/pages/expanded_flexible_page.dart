import 'package:flutter/material.dart';

class ExpandedFlexiblePage extends StatelessWidget {
  const ExpandedFlexiblePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(child: Container(color: Colors.blue, height: 20)),
              Flexible(
                child: Container(
                  color: Colors.white,
                  height: 20,
                  child: const Text("Flexible"),
                ),
              ),
            ],
          ),
          Divider(),
          Row(
            children: [
              Flexible(
                flex: 4,
                child: Container(color: Colors.blue, height: 20),
              ),
              Flexible(
                child: Container(
                  color: Colors.white,
                  height: 20,
                  child: const Text("Flexible"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
