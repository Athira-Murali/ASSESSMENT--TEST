import 'package:assessment_test/feature/bar_graph/widgets/bar_graph.dart';
import 'package:flutter/material.dart';

class BarGraphScreen extends StatefulWidget {
  const BarGraphScreen({super.key});

  @override
  State<BarGraphScreen> createState() => _BarGraphState();
}

class _BarGraphState extends State<BarGraphScreen> {
  List<double> weeklySummary = [
    4.40,
    2.50,
    42.42,
    10.50,
    100.20,
    88.99,
    90.10,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 400,
          child: MyBarGraph(weeklySummary: weeklySummary,),
        ),
      ),
    );
  }
}
