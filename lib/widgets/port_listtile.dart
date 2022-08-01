import 'package:flutter/material.dart';

class PortListTile extends StatelessWidget {
  const PortListTile({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      trailing: Text(
        "ดูรายละเอียด",
        style: TextStyle(
            color: Theme.of(context).primaryColor,
            decoration: TextDecoration.underline),
      ),
      shape: const RoundedRectangleBorder(
        side: BorderSide(color: Colors.black12, width: 1),
      ),
    );
  }
}
