// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'fl_indicator.dart';

class PortFlPieChart extends StatelessWidget {
  const PortFlPieChart({Key? key, required this.chartData}) : super(key: key);

  final Map<String, double> chartData;

  static const List<Color> colorList = [
    Color(0xffFFA8D2),
    Color(0xffB2135F),
    Color(0xffD41771),
    Color(0xffF5C4DB),
    Color(0xffE092B7),
    Color(0xffCC6697),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // chart
        Expanded(
          child: AspectRatio(
            aspectRatio: 1,
            child: PieChart(
              PieChartData(
                sectionsSpace: 0,
                centerSpaceRadius: 0,
                sections: showingSections(),
              ),
            ),
          ),
        ),
        SizedBox(width: 10),
        // legends
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: getIndicators(),
        ),
      ],
    );
  }

  List<Map<String, dynamic>> chartDataToList() {
    List<Map<String, dynamic>> list = [];

    chartData.forEach((key, value) {
      list.add({"indicator": key, "value": value});
    });
    return list;
  }

  List<Widget> getIndicators() {
    var chartDataList = chartDataToList();
    List<Widget> results = [];
    chartDataList.asMap().forEach((index, item) {
      String indicator = item['indicator'];
      // double value = item['value'];

      var ind = Indicator(
        color: colorList[index],
        text: indicator,
        isSquare: false,
        size: 12,
        textColor: Colors.grey,
      );

      results.add(ind);

      results.add(SizedBox(height: 10));
    });

    return results;
  }

  List<PieChartSectionData> showingSections() {
    var chartDataList = chartDataToList();

    List<PieChartSectionData> results = [];
    chartDataList.asMap().forEach((index, item) {
      // String indicator = item['indicator'];
      double value = item['value'];

      var pie = PieChartSectionData(
        color: colorList[index],
        value: value,
        title: '',
        radius: 85,
      );

      results.add(pie);
    });

    return results;
  }
}
