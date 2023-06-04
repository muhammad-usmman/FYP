import 'package:admin_side/constants.dart';
import 'package:flutter/material.dart';

class Equipment extends StatefulWidget {
  const Equipment({Key? key}) : super(key: key);

  @override
  State<Equipment> createState() => _EquipmentState();
}

class _EquipmentState extends State<Equipment> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child:
        Scaffold(
          appBar: AppBar(
              elevation: 2,
              backgroundColor: Colors.white,
              title: const  Text('Equipment')
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
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        // tileColor: Colors.orange.withOpacity(0.2),
                        title: const Text('Inventory'),
                        leading: const Icon(Icons.fitness_center),
                        trailing: const Icon(Icons.arrow_forward_ios),
                      ),
                      gaph20,
                      ListTile(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        // tileColor: Colors.orange.withOpacity(0.2),
                        title: const Text('Status'),
                        leading: const Icon(Icons.fitness_center),
                        trailing: const Icon(Icons.arrow_forward_ios),
                      ),
                      gaph20,
                      ListTile(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        // tileColor: Colors.orange.withOpacity(0.2),
                        title: const Text('Repairs'),
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
