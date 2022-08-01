import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class PortPicChart extends StatelessWidget {
  PortPicChart({Key? key}) : super(key: key);

  final Map<String, double> dataMap = {
    "ตราสารทุน-ไทย": 5,
    "ตราสารทุน-ต่างประเทศ": 3,
    "ตราสารหนี้ระยะสั้น": 1,
    "ตราสารหนี้ระยะยาว": 2,
    "กองทุนอสังหาริททรัพย์": 2,
    "การลงทุนทางเลือก": 1,
  };
  List<Color> colorList = [
    const Color(0xffFFA8D2),
    const Color(0xffB2135F),
    const Color(0xffD41771),
    const Color(0xffF5C4DB),
    const Color(0xffE092B7),
    const Color(0xffCC6697),
  ];

  @override
  Widget build(BuildContext context) {
    return PieChart(
      dataMap: dataMap,
      chartValuesOptions: ChartValuesOptions(showChartValues: false),
      colorList: colorList,
      chartLegendSpacing: 16,
      legendOptions: const LegendOptions(
        legendPosition: LegendPosition.right,
        legendShape: BoxShape.circle,
        legendTextStyle: TextStyle(
            fontWeight: FontWeight.w600, color: Colors.grey, fontSize: 10),
      ),
    );
  }
}
