import 'package:flutter/material.dart';

class RadioList extends StatefulWidget {
  const RadioList({Key? key, required this.choices}) : super(key: key);
  final List choices;

  @override
  _RadioListState createState() => _RadioListState();
}

class _RadioListState extends State<RadioList> {
  int? r_value;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(6.0),
            child: RadioListTile(
              value: index,
              groupValue: r_value,
              onChanged: (ind) {
                setState(() {
                  r_value = ind as int?;
                });
              },
              title: Text("${widget.choices[index]}"),
              shape: const RoundedRectangleBorder(
                side: BorderSide(color: Colors.black12, width: 1),
              ),
            ),
          );
        },
        itemCount: widget.choices.length,
      ),
    );
  }
}
