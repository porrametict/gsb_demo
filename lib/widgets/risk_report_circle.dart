import 'package:flutter/material.dart';

class RiskReportCircle extends StatelessWidget {
  const RiskReportCircle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Container(
        width: 150.0,
        height: 150.0,
        decoration: BoxDecoration(
            border: Border.all(color: (Colors.pink[100])!, width: 15),
            shape: BoxShape.circle,
            color: Theme.of(context).primaryColor),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "3",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "เสี่ยงกลาง",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      );
    });
  }
}
