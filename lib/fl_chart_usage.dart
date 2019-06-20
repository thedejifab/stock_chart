import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartSample1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(18)),
          gradient: LinearGradient(
            colors: [
              Color(0xff2c274c),
              Color(0xff46426c),
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: FlChart(
              chart: LineChart(
                LineChartData(
                  backgroundColor: Colors.white,
                  gridData: FlGridData(
                    show: false,
                  ),
                  titlesData: FlTitlesData(
                    show: false,
                  ),
                  borderData: FlBorderData(
                      show: true,
                      border: Border(
                        bottom: BorderSide(
                          color: Color(0xff4e4965),
                          width: 4,
                        ),
                        left: BorderSide(
                          color: Colors.transparent,
                        ),
                        right: BorderSide(
                          color: Colors.transparent,
                        ),
                        top: BorderSide(
                          color: Colors.transparent,
                        ),
                      )),
                  maxX: 10,
                  maxY: 1,
                  lineBarsData: [
                    LineChartBarData(
                      spots: [
                        FlSpot(0, 0),
                        FlSpot(1, 0),
                        FlSpot(2, 0),
                        FlSpot(3, 0),
                        FlSpot(4, 0),
                        FlSpot(5, 0),
                        FlSpot(6, 0.2),
                        FlSpot(7, 0.21),
                        FlSpot(8, 0.23),
                        FlSpot(9, 0.215),
                        FlSpot(10, 0),
                      ],
                      curveSmoothness: 0.5,
                      isCurved: true,
                      colors: [
                        Colors.green.shade900,
                      ],
                      barWidth: 1.5,
                      isStrokeCapRound: true,
                      dotData: FlDotData(
                        show: false,
                      ),
                      belowBarData: BelowBarData(
                        show: true,
                        colors: [Color(0xFFbae4b3)]
                            .map((color) => color.withOpacity(0.4))
                            .toList(),
                      ),
                    ),
                    LineChartBarData(
                      spots: [
                        FlSpot(0, 0),
                        FlSpot(1, 0.3),
                        FlSpot(2, 0.15),
                        FlSpot(3, 0.5),
                        FlSpot(4, 0.9),
                        FlSpot(5, 0.92),
                        FlSpot(6, 0.91),
                        FlSpot(7, 0.95),
                        FlSpot(8, 1.0),
                        FlSpot(9, 1.0),
                        FlSpot(10, 1.0),
                      ],
                      curveSmoothness: 0.5,
                      isCurved: true,
                      colors: [
                        Colors.green.shade900,
                      ],
                      barWidth: 1,
                      isStrokeCapRound: true,
                      dotData: FlDotData(
                        show: false,
                      ),
                      belowBarData: BelowBarData(
                        show: true,
                        colors: [Color(0xFF82ca84)]
                            .map((color) => color.withOpacity(0.4))
                            .toList(),
                      ),
                    ),
                    LineChartBarData(
                      spots: [
                        FlSpot(0, 0),
                        FlSpot(1, 0),
                        FlSpot(2, 0),
                        FlSpot(3, 0.2),
                        FlSpot(4, 0.21),
                        FlSpot(4, 0.35),
                        FlSpot(6, 0.24),
                        FlSpot(7, 0.21),
                        FlSpot(8, 0.5),
                        FlSpot(9, 0.75),
                        FlSpot(10, 1.0),
                      ],
                      curveSmoothness: 0.5,
                      isCurved: true,
                      colors: [Colors.green.shade900],
                      barWidth: 1.5,
                      isStrokeCapRound: true,
                      dotData: FlDotData(
                        show: false,
                      ),
                      belowBarData: BelowBarData(
                        show: true,
                        colors: [Color(0xFF026e2e)]
                            .map((color) => color.withOpacity(0.4))
                            .toList(),
                      ),
                    ),
                    LineChartBarData(
                      spots: [
                        FlSpot(0, 0),
                        FlSpot(1, 0),
                        FlSpot(2, 0),
                        FlSpot(3, 0),
                        FlSpot(4, 0),
                        FlSpot(5, 0),
                        FlSpot(6, 0),
                        FlSpot(7, 0.05),
                        FlSpot(8, 0.4),
                        FlSpot(9, 0.625),
                        FlSpot(10, 0.6),
                      ],
                      curveSmoothness: 0.5,
                      isCurved: true,
                      colors: [Colors.green.shade900],
                      barWidth: 1.5,
                      isStrokeCapRound: true,
                      dotData: FlDotData(
                        show: false,
                      ),
                      belowBarData: BelowBarData(
                        show: true,
                        colors: [Colors.green.shade900]
                            .map((color) => color.withOpacity(0.4))
                            .toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
