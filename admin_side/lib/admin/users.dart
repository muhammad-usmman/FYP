import 'package:admin_side/constants.dart';
import 'package:flutter/material.dart';

class Users extends StatefulWidget {
  const Users({Key? key}) : super(key: key);

  @override
  State<Users> createState() => _UsersState();
}

class _UsersState extends State<Users> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
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
                        // your onTap function here
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
                        child:const Center(
                          child: Text('Add Member'),
                        ),
                      ),
                    ),
                    gapw20,
                    gapw10,
                    gapw10,
                    InkWell(
                      onTap: () {
                        // your onTap function here
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
                          child: Text('View Members'),
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
                        // your onTap function here
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
                        child:const Center(
                          child: Text('Delete Member'),
                        ),
                      ),
                    ),
                    gapw20,
                    gapw10,
                    gapw10,
                    InkWell(
                      onTap: () {
                        // your onTap function here
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
                          child: Text('Blacklist Member'),
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
