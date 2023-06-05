import 'package:admin_side/Managing_Package/add_package.dart';
import 'package:admin_side/Managing_Package/delete_package.dart';
import 'package:admin_side/Managing_Package/update_package.dart';
import 'package:admin_side/constants.dart';
import 'package:flutter/material.dart';

class PAckage extends StatefulWidget {
  const PAckage({Key? key}) : super(key: key);

  @override
  State<PAckage> createState() => _PAckageState();
}

class _PAckageState extends State<PAckage> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child:
        Scaffold(
          appBar: AppBar(
              elevation: 2,
              backgroundColor: Colors.white,
              title: const  Text('Package')
          ),
          body: Padding(
              padding: kpda20,
            child: Column(
              children: [
                SizedBox(
                  height: 200,
                  child: ListView(
                    children: [
                      ListTile(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => AddPackage()),
                          );
                          // your onTap function here
                        },

                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        // tileColor: Colors.orange.withOpacity(0.2),
                        title: const Text('Add'),
                        leading: const Icon(Icons.fitness_center),
                        trailing: const Icon(Icons.arrow_forward_ios),
                      ),
                      gaph20,
                      ListTile(

                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => DeletePackage()),
                          );
                          // your onTap function here
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        // tileColor: Colors.orange.withOpacity(0.2),
                        title: const Text('Delete'),
                        leading: const Icon(Icons.fitness_center),
                        trailing: const Icon(Icons.arrow_forward_ios),
                      ),
                      gaph20,
                      ListTile(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => UpdatePackage()),
                          );
                          // your onTap function here
                        },

                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        // tileColor: Colors.orange.withOpacity(0.2),
                        title: const Text('Update'),
                        leading: const Icon(Icons.fitness_center),
                        trailing: const Icon(Icons.arrow_forward_ios),

                      ),
                    ],
                  ),
                ),

              ],

            ),

          ),


    ));
  }
}
