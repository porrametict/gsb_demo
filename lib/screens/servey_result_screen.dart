// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gsb_invest_coach/widgets/port_listtile.dart';
import 'package:gsb_invest_coach/widgets/primary_button.dart';
import 'package:gsb_invest_coach/widgets/risk_report.dart';
import 'package:gsb_invest_coach/widgets/risk_report_circle.dart';

class SurveyResultScreen extends StatelessWidget {
  const SurveyResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        title: const Text("แบบประเมินความเสี่ยง"),
        centerTitle: true,
        shadowColor: Colors.blueGrey[400],
        elevation: 1,
      ),
      body: Container(
        padding:
            const EdgeInsets.only(top: 40, left: 10, right: 10, bottom: 10),
        width: double.infinity,
        child: Column(
          children: [
            // result
            Column(
              children: [
                Text(
                  "ระดับความเสี่ยงและความรู้ของท่าน",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                RiskReport(),
                SizedBox(
                  height: 10,
                ),
                PrimaryButton(
                    isOutlined: true,
                    useSmallSize: true,
                    onPressed: () {},
                    child: Text("ทำแบบประเมินใหม่"))
              ],
            ),
            // recommended ports
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("พอร์ตแนะนำ",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: ListView(children: const [
                      PortListTile(title: "แผนคนละครึ่ง"),
                      SizedBox(
                        height: 15,
                      ),
                      PortListTile(title: "แผนช้าแต่ชัวร์")
                    ]),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
