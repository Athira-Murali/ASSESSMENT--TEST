import 'package:assessment_test/feature/bar_graph/widgets/bar_data.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/widgets.dart';

class MyBarGraph extends StatelessWidget {
  final List weeklySummary;
  const MyBarGraph({super.key, required this.weeklySummary});

  @override
  Widget build(BuildContext context) {
    BarData myBarData = BarData(
        sunAmount: weeklySummary[0],
        monAmount: weeklySummary[1],
        tueAmount: weeklySummary[0],
        wedAmount: weeklySummary[0],
        thurAmount: weeklySummary[0],
        friAmount: weeklySummary[0],
        satAmount: weeklySummary[0]);
    myBarData.initializeBarData();
    return BarChart(BarChartData(
        maxY: 200,
        minY: 0,
        barGroups: myBarData.barData
        .map(
          (data) => BarChartGroupData(
            x: data.x, barRods: [
              BarChartRodData(y: data.y,),
              ]
              )
              ).toList()
              ));
  }
}
