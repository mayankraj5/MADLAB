import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<charts.Series<SalesData, String>> seriesList = [
    charts.Series(
      id: 'Sales',
      domainFn: (SalesData sales, _) => sales.year,
      measureFn: (SalesData sales, _) => sales.sales,
      data: [
        SalesData('2016', 100),
        SalesData('2017', 75),
        SalesData('2018', 200),
        SalesData('2019', 150),
        SalesData('2020', 300),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chart Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Chart Example'),
        ),
        body: Center(
          child: charts.BarChart(
            seriesList,
            animate: true,
            vertical: false,
          ),
        ),
      ),
    );
  }
}

class SalesData {
  final String year;
  final int sales;

  SalesData(this.year, this.sales);
}
