import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  final String title;

  const SettingPage({super.key, required this.title});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  TextEditingController controller = TextEditingController();
  bool? isChecked = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          AppBar(
            leading: BackButton(onPressed: () => Navigator.pop(context)),
            title: Text(widget.title),
          ),
          TextField(
            controller: controller,
            decoration: const InputDecoration(border: UnderlineInputBorder()),
            onEditingComplete: () {
              setState(() {});
            },
          ),
          Text(controller.text),
          CheckboxListTile(
            tristate: true,
            title: const Text("Giới tính"),
            value: isChecked,
            onChanged: (bool? value) {
              setState(() {
                isChecked = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
