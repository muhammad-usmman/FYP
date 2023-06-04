import 'package:admin_side/Managing_Users/add_user.dart';
import 'package:admin_side/Managing_Users/delete_users.dart';
import 'package:admin_side/Managing_Users/view_users.dart';
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
          appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              title: const  Text('User')
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
                          MaterialPageRoute(builder: (context) => AddUser()),
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
                            Icon(Icons.person_add,size: 25,semanticLabel: "ADD",),
                            gaph5,
                            Text('Add ', style: kms,)
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
                          MaterialPageRoute(builder: (context) => View_Users()),
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
                            Text('View ', style: kms,)
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
                          MaterialPageRoute(builder: (context) => Delete_User()),
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
                            Text('Delete ', style: kms,)
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
                            Text('Blacklist ', style: kms,)
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
