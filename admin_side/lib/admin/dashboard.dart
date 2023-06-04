import 'package:admin_side/Dashboard/equipment.dart';
import 'package:admin_side/Dashboard/reports.dart';
import 'package:admin_side/Dashboard/settings.dart';
import 'package:admin_side/constants.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  late List<No0fMembers> _mchartData;
  late TooltipBehavior _mtooltipBehavior;
  late List<No_0f_trainers> _tchartData;
  late TooltipBehavior _ttooltipBehavior;

  @override
  void initState() {
    _mchartData = get_member_ChartData();
    _mtooltipBehavior = TooltipBehavior(enable: true);
    _tchartData = get_trainer_ChartData();
    _ttooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child:
        Scaffold(
          appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.white70,
              title: const  Text('The Muscle Bar')
          ),
          body: Padding(
              padding: kpda20,
            child:  Column(
              children: [
                Row(
                  children: [
                    Container(
                      // color: kprimary,
                      height: 250,
                      width: 175,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 3,
                            blurRadius: 5,
                            offset: const Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10),
                      ),

                      child:
                      SfCircularChart(
                        title: ChartTitle(text: 'Members'),
                        tooltipBehavior: _mtooltipBehavior,
                        series: <CircularSeries>[
                          RadialBarSeries<No0fMembers, String>(
                            dataSource: _mchartData,
                            xValueMapper: (No0fMembers data,_) => data.members,
                            yValueMapper: (No0fMembers data,_) => data.Num,
                            dataLabelSettings: DataLabelSettings(isVisible: true,),
                            enableTooltip: true,
                            maximumValue: 100,
                          )
                        ],

                      ),

                    ),
                    gapw10,
                    Container(
                      // color: Colors.red,
                      height: 250,
                      width: 175,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 3,
                            blurRadius: 5,
                            offset: const Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child:
                      SfCircularChart(
                        title: ChartTitle(text: 'Trainer'),
                        tooltipBehavior: _ttooltipBehavior,
                        series: <CircularSeries>[
                          RadialBarSeries<No_0f_trainers, String>(
                            dataSource: _tchartData,
                            xValueMapper: (No_0f_trainers data,_) => data.trainer,
                            yValueMapper: (No_0f_trainers data,_) => data.number,
                            dataLabelSettings: DataLabelSettings(isVisible: true,),
                            enableTooltip: true,
                            maximumValue: 10,
                          )
                        ],

                      ),

                    ),
                  ],
                ),
                gaph20,
                // gapw20,
                Row(
                  children: [
                    gapw10,
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Equipment()),
                        );
                        // your onTap function here
                      },
                      highlightColor: Colors.yellow,
                      splashColor: Colors.orange,
                      borderRadius: BorderRadius.circular(10),

                      child: Container(
                        decoration:  BoxDecoration(
                          color: Colors.white ,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 3,
                              blurRadius: 5,
                              offset: const Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: 150,
                        height: 150,
                        // color: Colors.blue,
                        child:  Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                             Icon(Icons.fitness_center_rounded,size: 25,semanticLabel: "Equipment",),
                            gaph5,
                             Text('Equipment', style: kms,)
                          ],
                        ),
                      ),
                    ),
                    gapw20,
                    gapw10,
                    gapw10,
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>Reports()),
                        );
                      },
                      highlightColor: Colors.yellow,
                      splashColor: Colors.orange,
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                        decoration:  BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 3,
                              blurRadius: 5,
                              offset: const Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: 150,
                        height: 150,
                        // color: Colors.blue,
                        child: Center(
                          child:  Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.calendar_month_outlined,size: 25,semanticLabel: "Equipment",),
                              gaph5,
                              Text('Report', style: kms,)
                            ],
                          ),
                        ),
                      ),

                    ),


                  ],
                ),
                gaph20,
                Row(
                  children: [
                    gapw10,
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Settings()),
                        );
                      },
                      highlightColor: Colors.yellow,
                      splashColor: Colors.orange,
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                        decoration:  BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 3,
                              blurRadius: 5,
                              offset: const Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: 150,
                        height: 150,
                        // color: Colors.blue,
                        child:  Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.settings,size: 25,semanticLabel: "Setting",),
                            gaph5,
                            Text('Setting', style: kms,)
                          ],
                        ),
                      ),

                    ),

                  ],
                ),

              ],
            ),
          ),
        )
    );
  }
  List<No0fMembers> get_member_ChartData() {
    final List<No0fMembers> chartData =[
      No0fMembers('Members',79),
    ];
    return chartData;
  }
  List<No_0f_trainers> get_trainer_ChartData() {
    final List<No_0f_trainers> chartData =[
      No_0f_trainers('trainers',5),
    ];
    return chartData;
  }
}

class No0fMembers{
  No0fMembers(this.members,this.Num);
  final String members;
  final int Num;
}
class No_0f_trainers{
  No_0f_trainers(this.trainer,this.number);
  final String trainer;
  final int number;
}