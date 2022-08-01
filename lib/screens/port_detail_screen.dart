// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:gsb_invest_coach/widgets/port_detail_table.dart';
import 'package:gsb_invest_coach/widgets/port_fl_pie_chart.dart';
import 'package:gsb_invest_coach/widgets/port_pie_chart.dart';

class PortDetailScreen extends StatelessWidget {
  const PortDetailScreen({Key? key}) : super(key: key);

  static const Map<String, String> fakeTableData = {
    "อัตราผลตอบแทน": "6% ต่อปี",
    "ความเสี่ยง": "ปานกลาง",
    "เหมาะสมกับ": "นักลงทุนที่เริ่มต้นแต่มีความรู้ปานกลาง",
  };

  static const Map<String, double> fakeChartData = {
    "ตราสารทุน-ไทย": 5,
    "ตราสารทุน-ต่างประเทศ": 3,
    "ตราสารหนี้ระยะสั้น": 1,
    "ตราสารหนี้ระยะยาว": 2,
    "กองทุนอสังหาริมทรัพย์": 2,
    "การลงทุนทางเลือก": 1,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        title: const Text("พอร์ตแนะนำ"),
        centerTitle: true,
        shadowColor: Colors.blueGrey[400],
        elevation: 1,
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        width: double.infinity,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          // port name

          const Text(
            "แผนคนละครึ่ง",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),

          // chart

          // PortPicChart(),
          const PortFlPieChart(
            chartData: fakeChartData,
          ),
          const SizedBox(height: 30),

          // detail
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("รายละเอียด",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 20,
              ),
              const PortDetailTable(tableData: fakeTableData),
            ],
          )
        ]),
      ),
    );
  }
}
