import 'package:flutter/material.dart';
import 'package:gsb_invest_coach/widgets/risk_report_circle.dart';

class RiskReport extends StatelessWidget {
  const RiskReport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const RiskReportCircle(),
      SizedBox(
        height: 20,
      ),
      const Text(
        "ระดับความเสี่ยง 3 จาก 5",
      ),
      SizedBox(
        height: 5,
      ),
      const Text("วันที่แบบประเมินหมดอายุ : 06 / 03 / 2566")
    ]);
  }
}
