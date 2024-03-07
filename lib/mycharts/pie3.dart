import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CircleSyncChart extends StatefulWidget {
  const CircleSyncChart({Key? key}) : super(key: key);

  @override
  State<CircleSyncChart> createState() => _CircleSyncChartState();
}

class _CircleSyncChartState extends State<CircleSyncChart> {
  late List<PolStats1> _julio;
  late TooltipBehavior _ehe;
  @override
  void initState() {
    _julio = getChart();
    _ehe = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SfCircularChart(
      title: ChartTitle(
          text: 'Ratings',
          textStyle: TextStyle(
              color: Color(0xffa84f48),
              fontSize: 30,
              fontWeight: FontWeight.bold)),
      tooltipBehavior: _ehe,
      legend:
      Legend(isVisible: true, overflowMode: LegendItemOverflowMode.wrap),
      series: <CircularSeries>[
        PieSeries<PolStats1, String>(
            dataSource: _julio,
            xValueMapper: (PolStats1 jul, _) => jul.name,
            yValueMapper: (PolStats1 jul, _) => jul.votes,
            dataLabelSettings: DataLabelSettings(isVisible: true))
      ],
    );
  }
}

List<PolStats1> getChart() {
  final List<PolStats1> _stats = [
    PolStats1(name: 'Mrs.Julio', votes: 100),
    PolStats1(name: 'Mr.Juba', votes: 50),
    PolStats1(name: 'Mrs.Natalie', votes: 900),
    PolStats1(name: 'Mr.Lubowa', votes: 342),
    PolStats1(name: 'Mr.Julio', votes: 1500),
  ];
  return _stats;
}

class PolStats1 {
  final String name;
  final int votes;
  PolStats1({
    required this.name,
    required this.votes,
  });
}
