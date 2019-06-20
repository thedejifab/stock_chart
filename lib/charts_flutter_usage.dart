/// Example of a stacked area chart with custom area colors.
///
/// By default, the area skirt for a chart will be drawn with the same color as
/// the line, but with a 10% opacity assigned to it. An area color function can
/// be provided to override this with any custom color.
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:charts_flutter/flutter.dart';
import 'package:flutter/material.dart';

class StackedAreaCustomColorLineChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  StackedAreaCustomColorLineChart(this.seriesList, {this.animate});

  /// Creates a [LineChart] with sample data and no transition.
  factory StackedAreaCustomColorLineChart.withSampleData() {
    return new StackedAreaCustomColorLineChart(
      _createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new charts.
    LineChart(seriesList,
        defaultRenderer: new charts.LineRendererConfig(
          includeArea: true,
          stacked: false,
          radiusPx: 3.0,
          strokeWidthPx: 0.3,
          areaOpacity: 0,
          roundEndCaps: true,
          includePoints: true,          
          layoutPaintOrder: LayoutViewPaintOrder.linePointHighlighter
        ),
        
        
        animate: animate);
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<LinearSales, int>> _createSampleData() {
    final myFakeDesktopData = [
      new LinearSales(0, 0),
      new LinearSales(1, 0.3),
      new LinearSales(2, 0.15),
      new LinearSales(3, 0.5),
      new LinearSales(4, 0.9),
      new LinearSales(5, 0.92),
      new LinearSales(6, 0.91),
      new LinearSales(7, 0.95),
      new LinearSales(8, 1.0),
      new LinearSales(9, 1.0),
      new LinearSales(10, 1.0),
    ];

    var myFakeTabletData = [
      new LinearSales(0, 0),
      new LinearSales(1, 0),
      new LinearSales(2, 0),
      new LinearSales(3, 0.2),
      new LinearSales(4, 0.21),
      new LinearSales(4, 0.35),
      new LinearSales(6, 0.24),
      new LinearSales(7, 0.21),
      new LinearSales(8, 0.5),
      new LinearSales(9, 0.75),
      new LinearSales(10, 1.0),
    ];

    var myFakeMobileData = [
      new LinearSales(0, 0),
      new LinearSales(1, 0),
      new LinearSales(2, 0),
      new LinearSales(3, 0),
      new LinearSales(4, 0),
      new LinearSales(5, 0),
      new LinearSales(6, 0),
      new LinearSales(7, 0),
      new LinearSales(8, 0.2),
      new LinearSales(9, 0.75),
      new LinearSales(10, 1.0),
    ];

    var myFakeLastData = [
      new LinearSales(0, 0),
      new LinearSales(1, 0),
      new LinearSales(2, 0),
      new LinearSales(3, 0),
      new LinearSales(4, 0),
      new LinearSales(5, 0),
      new LinearSales(6, 0),
      new LinearSales(7, 0.05),
      new LinearSales(8, 0.4),
      new LinearSales(9, 0.625),
      new LinearSales(10, 0.6),
    ];

    

    return [
      new charts.Series<LinearSales, int>(
        id: 'Desktop',
        // colorFn specifies that the line will be blue.
        colorFn: (_, __) => charts.MaterialPalette.transparent,
        // areaColorFn specifies that the area skirt will be light blue.
        areaColorFn: (_, __) =>
            charts.MaterialPalette.blue.shadeDefault.lighter,
        domainFn: (LinearSales sales, _) => sales.year,
        measureFn: (LinearSales sales, _) => sales.sales,
        data: myFakeDesktopData,
      ),
      new charts.Series<LinearSales, int>(
        id: 'Tablet',
        // colorFn specifies that the line will be red.
        colorFn: (_, __) => charts.MaterialPalette.transparent,
        // areaColorFn specifies that the area skirt will be light red.
        areaColorFn: (_, __) => charts.MaterialPalette.green.shadeDefault.lighter,
        domainFn: (LinearSales sales, _) => sales.year,
        measureFn: (LinearSales sales, _) => sales.sales,
        data: myFakeTabletData,
      ),
      new charts.Series<LinearSales, int>(
        id: 'Mobile',
        // colorFn specifies that the line will be green.
        colorFn: (_, __) => charts.MaterialPalette.transparent,
        // areaColorFn specifies that the area skirt will be light green.
        areaColorFn: (_, __) =>
            charts.MaterialPalette.pink.shadeDefault.lighter,
        domainFn: (LinearSales sales, _) => sales.year,
        measureFn: (LinearSales sales, _) => sales.sales,
        data: myFakeMobileData,
      ),
      new charts.Series<LinearSales, int>(
        id: 'Last',
        // colorFn specifies that the line will be green.
        colorFn: (_, __) => charts.MaterialPalette.transparent,
        // areaColorFn specifies that the area skirt will be light green.
        areaColorFn: (_, __) =>
            charts.MaterialPalette.purple.shadeDefault.lighter,
        domainFn: (LinearSales sales, _) => sales.year,
        measureFn: (LinearSales sales, _) => sales.sales,
        data: myFakeLastData,
      )
    ];
  }
}

/// Sample linear data type.
class LinearSales {
  final int year;
  final double sales;

  LinearSales(this.year, this.sales);
}
