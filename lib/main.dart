import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart';
import 'package:stock_chart/charts_flutter_usage.dart';
import 'package:stock_chart/fl_chart_usage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'With FlChart package:',
            ),
            Container(
              height: 100.0,
              width: double.infinity,
              padding: EdgeInsets.all(20.0),
              child: LineChartSample1(),
            ),
            SizedBox(height: 50),
            Text(
              'With chart_flutter package:',
            ),
            Container(
              height: 100.0,
              width: double.infinity,
              padding: EdgeInsets.all(20.0),
              child: StackedAreaCustomColorLineChart.withSampleData(),
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
