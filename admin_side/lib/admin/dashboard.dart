import 'package:admin_side/Dashboard/packages.dart';
import 'package:admin_side/admin/members.dart';
import 'package:admin_side/admin/trainers.dart';
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
          body: SingleChildScrollView(
            child: Padding(
                padding: kpda20,
              child:  Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          // color: kprimary,
                          height: 200,
                          // width: 7020,
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
                                dataLabelSettings: const DataLabelSettings(isVisible: true,),
                                enableTooltip: true,
                                maximumValue: 100,
                              )
                            ],

                          ),

                        ),
                      ),
                      gapw10,
                      Expanded(
                        child: Container(
                          // color: Colors.red,
                          height: 200,
                          // width: 175,
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
                                dataLabelSettings: const DataLabelSettings(isVisible: true,),
                                enableTooltip: true,
                                maximumValue: 10,
                              )
                            ],

                          ),

                        ),
                      ),
                    ],
                  ),
                  gaph20,

                  Row(
                    children: [
                      
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const Users()),
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
                            // width: 150,
                            height: 150,
                            // color: Colors.blue,
                            child:  const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.supervised_user_circle_outlined,size: 25,semanticLabel: "Members",),
                                gaph5,
                                Text('Members', style: kms,)
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
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const PAckage()),
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
                            // width: 150,
                            height: 150,
                            // color: Colors.blue,
                            child:  const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.fitness_center_rounded,size: 25,semanticLabel: "Package",),
                                gaph5,
                                Text('Package', style: kms,)
                              ],
                            ),
                          ),
                        ),
                      ),
                      gapw10,
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>const Trainer()),
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
                            // width: 150,
                            height: 150,
                            // color: Colors.blue,
                            child: const Center(
                              child:  Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.message_outlined,size: 25,semanticLabel: "Trainer",),
                                  gaph5,
                                  Text('Trainer', style: kms,)
                                ],
                              ),
                            ),
                          ),

                        ),
                      ),


                    ],
                  ),

                ],
              ),
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