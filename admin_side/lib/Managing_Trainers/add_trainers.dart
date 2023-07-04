import 'package:admin_side/admin/trainers.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../../constants.dart';

class AddTrainer extends StatefulWidget {
  const AddTrainer({Key? key}) : super(key: key);

  @override
  State<AddTrainer> createState() => _AddTrainerState();
}

class _AddTrainerState extends State<AddTrainer> {
  bool _isObscure = true;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController namecontroller = TextEditingController();
  final TextEditingController cniccontrller = TextEditingController();
  final TextEditingController mailcontroller = TextEditingController();
  final TextEditingController phonecontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  final TextEditingController agecontroller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Trainer"),
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
          padding: kpda20,
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value){
                    if(value!.isEmpty){
                      return 'Enter Email';
                    }
                    else if(!RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$').hasMatch(value)){
                      return 'Enter valid email';
                    }
                    else {
                      return null;
                    }
                  },
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(
                    ),
                    hintText: 'Email',
                    helperText: 'example@domain.com',
                  ),
                ),

                gaph20,
                TextFormField(
                  obscureText: _isObscure,
                  validator: (value){
                    if(value!.isEmpty){
                      return 'Enter Password';
                    }
                    else {
                      return null;
                    }
                  },
                  controller: _passwordController,
                  decoration: InputDecoration(
                    border: const UnderlineInputBorder(
                    ),
                    hintText: 'Password',
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isObscure ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                    ),
                  ),
                ),
                gaph10,
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

                gaph20,
                ElevatedButton(
                  onPressed: () {
                    FirebaseFirestore.instance.collection("Trainer").add({
                      'Name':namecontroller.text,
                      'CNIC':cniccontrller.text,
                      'Contact':phonecontroller.text,
                      'Age':agecontroller.text,

                      'Email':_emailController.text,
                    }
                    );
                    FirebaseAuth.instance.createUserWithEmailAndPassword(
                        email: _emailController.text,
                        password: _passwordController.text)
                        .then((value) {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => const Trainer()));
                    }).onError((error, stackTrace) {
                      const Text('Error Occured');
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical:  10,horizontal: 100),
                  ),
                  child: const Text( 'Add Trainer'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}