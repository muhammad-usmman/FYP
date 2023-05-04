import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late List<No0ftrainers> _tchartData;
  late TooltipBehavior _ttooltipBehavior;

  @override
  void initState() {
   _tchartData = get_trainer_ChartData();
   _ttooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
 return SafeArea(
     child: Scaffold(
   body:
         SfCircularChart(
           title: ChartTitle(text: 'Trainer'),
           tooltipBehavior: _ttooltipBehavior,
           series: <CircularSeries>[
             RadialBarSeries<No0ftrainers, String>(
               dataSource: _tchartData,
               xValueMapper: (No0ftrainers data,_) => data.trainer,
               yValueMapper: (No0ftrainers data,_) => data.number,
               dataLabelSettings: DataLabelSettings(isVisible: true,),
               enableTooltip: true,
               maximumValue: 10,
             )
           ],

         ),
     )
 );

  }
  List<No0ftrainers> get_trainer_ChartData() {
    final List<No0ftrainers> chartData =[
      No0ftrainers('trainers',5),
    ];
    return chartData;
  }
}

class No0ftrainers{
  No0ftrainers(this.trainer,this.number);
  final String trainer;
  final int number;
}
