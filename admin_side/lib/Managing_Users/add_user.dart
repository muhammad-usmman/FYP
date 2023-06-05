// import 'dart:io';
import 'package:admin_side/constants.dart';
import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:image_picker/image_picker.dart';

class AddUser extends StatefulWidget {

  @override
  State<AddUser> createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {

  final formkey = GlobalKey<FormState>();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController cniccontrller = TextEditingController();
  TextEditingController mailcontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController agecontroller = TextEditingController();
  // TextEditingController destination = TextEditingController();


  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text("Add User"),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Form(
            key: formkey,
            child: Column(
              children: [
                gaph20,

                TextFormField(
                  decoration: const InputDecoration(
                    // icon: Icon(Icons.person),
                    border: UnderlineInputBorder(),
                    labelText: 'Name',
                  ),
                  controller: namecontroller,
                  keyboardType: TextInputType.name,
                  validator: (value){
                    if(value!.isEmpty){
                      return 'Enter your name';
                    }
                    else if(!RegExp(r'^[a-z A-Z]+$').hasMatch(value)){
                      return 'Enter valid name';
                    }
                    else {
                      return null;
                    }
                  },
                ),

                gaph10,

                TextFormField(
                  decoration: const  InputDecoration(
                    border: UnderlineInputBorder(
                    ),
                    labelText: 'CNIC',
                    helperText: 'XXXXX-XXXXXXX-X',
                  ),
                  controller: cniccontrller,
                  keyboardType: TextInputType.number,
                  validator: (value){
                    if(value!.isEmpty){
                      return 'Enter your CNIC';
                    }
                    else if(!RegExp(r'^\d{5}-\d{7}-\d+$').hasMatch(value)){
                      return 'Enter valid CNIC';
                    }
                    else {
                      return null;
                    }
                  },
                ),
                gaph10,

                TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(
                    ),
                    labelText: 'E-Mail Id',
                    helperText: 'example@domain.com',
                  ),
                  controller: mailcontroller,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value){
                    if(value!.isEmpty){
                      return 'Enter your E-Mail id';
                    }
                    else {
                      return null;
                    }
                  },

                ),
                gaph10,

                TextFormField(
                  decoration: const InputDecoration(
                      border: UnderlineInputBorder(
                      ),
                      labelText: 'Phone No.',
                      helperText: 'XXXX-XXXXXXX'
                  ),
                  controller: phonecontroller,
                  keyboardType: TextInputType.number,
                  validator: (value){
                    if(value!.isEmpty){
                      return 'Enter your phone number';
                    }
                    else if(!RegExp(r'^\d{4}[-\s./\d]+$').hasMatch(value)){
                      return 'Enter valid phone number';
                    }
                    else {
                      return null;
                    }
                  },
                ),
                gaph10,

                TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(
                    ),
                    labelText: 'Password',
                  ),
                  controller: passwordcontroller,
                  keyboardType: TextInputType.visiblePassword,
                  validator: (value){
                    if(value!.isEmpty){
                      return 'Set the Password';
                    }
                    else {
                      return null;
                    }
                  },

                ),
                gaph10,

                TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(
                    ),
                    labelText: 'Age',

                  ),
                  controller: agecontroller,
                  keyboardType: TextInputType.number,
                  validator: (value){
                    if(value!.isEmpty){
                      return 'Enter your Age';
                    }
                    else {
                      return null;
                    }
                  },
                ),
                gaph10,

                // TextFormField(
                //   decoration: InputDecoration(
                //     border: UnderlineInputBorder(
                //     ),
                //     labelText: 'Destination',
                //   ),
                //   controller: destination,
                //   keyboardType: TextInputType.streetAddress,
                //   validator: (value){
                //     if(value!.isEmpty){
                //       return 'Enter your Starting Address';
                //     }
                //     else {
                //       return null;
                //     }
                //   },
                // ),
                // sizedb20,


                gaph20,
                gaph20,
                gaph20,
                // ElevatedButton(
                //     onPressed: () {
                //
                //       if(formkey.currentState!.validate()){
                //         // final snackBar = SnackBar(
                //         //   content: Text('Class booked successfully.'),
                //         //   behavior: SnackBarBehavior.floating,
                //         //   shape: RoundedRectangleBorder(
                //         //       borderRadius: BorderRadius.circular(10)
                //         //   ),
                //         // );
                //         // _scaffoldKey.currentState!.showSnackBar(snackBar);
                //         FirebaseFirestore.instance.collection("Camp_Booking").add({
                //           'Name':'${namecontroller.text}',
                //           'CNIC':'${cniccontrller.text}',
                //           'E-mail id':'${mailcontroller.text}',
                //           'Contact':'${phonecontroller.text}',
                //           'Password':'${passwordcontroller.text}',
                //           'Age':'${agecontroller.text}'
                //         }
                //         );
                //         Navigator.pop(context);
                //       }
                //       // _namecontroller.clear();
                //       // cnic.clear();
                //       // mail.clear();
                //       // phone.clear();
                //       // address.clear();
                //       // strtaddress.clear();
                //       // destination.clear();
                //     },
                //     child: Text('Add Member',)
                // ),

                gaph20,


              ],
            ),
          ),
        ),

      ),
    );
  }
}