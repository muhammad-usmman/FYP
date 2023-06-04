import 'package:admin_side/Financial/expenditures.dart';
import 'package:admin_side/Financial/members_fees.dart';
import 'package:admin_side/Financial/trainers_salary.dart';
import 'package:admin_side/Financial/utility_bills.dart';
import 'package:admin_side/constants.dart';
import 'package:flutter/material.dart';



class Financial extends StatefulWidget {
  const Financial({Key? key}) : super(key: key);

  @override
  State<Financial> createState() => _FinancialState();
}

class _FinancialState extends State<Financial> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              title: const  Text('Financials')
          ),
          body:
          Padding(
            padding: kpda20,
            child: Column(
              children: [
                gaph20,
                Row(
                  children: [
                    gapw10,
                    InkWell(
                      onTap: () {
                        // Navigate to the second page when tapped
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Expenditures()),
                        );
                      },
                      highlightColor: Colors.yellow,
                      splashColor: Colors.orange,
                      borderRadius: BorderRadius.circular(10),

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
                            // Icon(Icons.,size: 25,semanticLabel: "ADD",),
                            gaph5,
                            Text('Expenditure ', style: kms,)
                          ],
                        ),
                      ),
                    ),
                    gapw20,
                    gapw10,
                    gapw10,
                    InkWell(
                      onTap: () {
                        // Navigate to the second page when tapped
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MemberFees()),
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
                            Icon(Icons.view_list_rounded,size: 25,semanticLabel: "View Members",),
                            gaph5,
                            Text('Member Dues ', style: kms,)
                          ],
                        ),
                      ),

                    ),
                  ],
                ),
                gaph20,
                gaph10,
                Row(
                  children: [
                    gapw10,
                    InkWell(
                      onTap: () {
                        // Navigate to the second page when tapped
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TrainersSalary()),
                        );
                      },
                      highlightColor: Colors.yellow,
                      splashColor: Colors.orange,
                      borderRadius: BorderRadius.circular(10),

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
                            Icon(Icons.delete,size: 25,semanticLabel: "Delete Members",),
                            gaph5,
                            Text('Trainers Salary ', style: kms,)
                          ],
                        ),
                      ),
                    ),
                    gapw20,
                    gapw10,
                    gapw10,
                    InkWell(
                      onTap: () {
                        // your onTap function here
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => UtilityBills()),
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
                            Icon(Icons.block_sharp,size: 25,semanticLabel: "Blacklist Members",),
                            gaph5,
                            Text('Utility Bills ', style: kms,)
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
}
