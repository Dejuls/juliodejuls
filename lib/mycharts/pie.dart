import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MyFirstChart extends StatefulWidget {
  const MyFirstChart({Key? key}) : super(key: key);

  @override
  State<MyFirstChart> createState() => _MyFirstChartState();
}

class _MyFirstChartState extends State<MyFirstChart> {
  int _touch = -1;
  @override
  Widget build(BuildContext context) {
    return PieChart(
      PieChartData(
          centerSpaceRadius: 40,
          borderData: FlBorderData(show: false),
          pieTouchData: PieTouchData(
            touchCallback: (FlTouchEvent event, pieTouchResponse) {
              setState(() {
                if (!event.isInterestedForInteractions ||
                    pieTouchResponse == null ||
                    pieTouchResponse.touchedSection == null) {
                  _touch = -1;
                  return;
                }
                _touch = pieTouchResponse.touchedSection!.touchedSectionIndex;
              });
            },
          ),
          sections: [
            PieChartSectionData(
              value: 20,
              title: '20%',
              titleStyle: TextStyle(fontSize: 20, color: Colors.red[100]),
              radius: 40,
            ),
            PieChartSectionData(
              value: 20,
              title: '20%',
              titleStyle: TextStyle(fontSize: 20, color: Colors.red[100]),
              radius: 40,
            ),
          ]),
    );
  }

  dynamic _sects() {
    List<PieChartSectionData>.generate(4, (k) {
      final j = k == _touch;
      final fontSize = j ? 30.0 : 20.0;
      final rad = j ? 40.0 : 20.0;
      switch (k) {
        case 0:
          return PieChartSectionData(
            value: 20,
            title: '20%',
            titleStyle: TextStyle(fontSize: fontSize, color: Colors.red[100]),
            radius: rad,
          );
        case 1:
          return PieChartSectionData(
            value: 30,
            title: '30%',
            titleStyle: TextStyle(fontSize: fontSize, color: Colors.blue[100]),
            radius: rad,
          );
        case 2:
          return PieChartSectionData(
            value: 10,
            title: '10%',
            titleStyle: TextStyle(fontSize: fontSize, color: Colors.green[100]),
            radius: rad,
          );
        case 3:
          return PieChartSectionData(
            value: 40,
            title: '40%',
            titleStyle:
            TextStyle(fontSize: fontSize, color: Colors.purple[100]),
            radius: rad,
          );

        default:
          throw Error();
      }
    });
  }
// List<PieChartSectionData> _sects() {
//   return List.generate(4, (k) {
//     final j = k == _touch;
//     final fontSize = j ? 30.0 : 20.0;
//     final rad = j ? 40.0 : 20.0;
//     switch (k) {
//       case 0:
//         return PieChartSectionData(
//           value: 20,
//           title: '20%',
//           titleStyle: TextStyle(fontSize: fontSize, color: Colors.red[100]),
//           radius: rad,
//         );
//       case 1:
//         return PieChartSectionData(
//           value: 30,
//           title: '30%',
//           titleStyle: TextStyle(fontSize: fontSize, color: Colors.blue[100]),
//           radius: rad,
//         );
//       case 2:
//         return PieChartSectionData(
//           value: 10,
//           title: '10%',
//           titleStyle: TextStyle(fontSize: fontSize, color: Colors.green[100]),
//           radius: rad,
//         );
//       case 3:
//         return PieChartSectionData(
//           value: 40,
//           title: '40%',
//           titleStyle:
//               TextStyle(fontSize: fontSize, color: Colors.purple[100]),
//           radius: rad,
//         );

//       default:
//         throw Error();

//     }
//   });
// }
}
