import 'package:admin_side/admin/dashboard.dart';

import 'package:flutter/material.dart';


import '../../../constants.dart';




class AdminLoginPage extends StatefulWidget {
  const AdminLoginPage({Key? key}) : super(key: key);

  @override
  State<AdminLoginPage> createState() => _AdminLoginPageState();
}

class _AdminLoginPageState extends State<AdminLoginPage> {
  bool _isObscure = true;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: kpda20,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('TMB',
                          style: kmd.copyWith(color: Colors.indigo)),
                      const Text('THE MUSCLE BAR',
                        style: ksm,),
                      gaph20,
                      gaph20,
                      gaph20,
                      gaph20,
                      Text('Welcome Admin',
                        style: kmd.copyWith(color: Colors.indigo),),
                      const Text('Lets get started',
                        style: ksm,),
                    ],
                  ),
                ],
              ),
              gaph20,
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: _emailController,
                      validator: (value){
                        if(value!.isEmpty){
                          return 'Enter Email';
                        }
                        else {
                          return null;
                        }
                      },
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(
                        ),
                        hintText: 'Email',
                        prefixIcon: Icon(Icons.email,),
                      ),
                    ),

                    gaph20,
                    TextFormField(
                      obscureText: _isObscure,
                      controller: _passwordController,
                      validator: (value){
                        if(value!.isEmpty){
                          return 'Enter Password';
                        }
                        else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        border: const UnderlineInputBorder(
                        ),
                        hintText: 'Password',
                        prefixIcon: const Icon(Icons.lock,),
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


                    gaph20,
                    gaph20,
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          String email = _emailController.text;
                          String password = _passwordController.text;

                          if (email == 'admin@gmail.com' && password == 'admin123') {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => const DashBoard()),
                            );
                            _emailController.clear();
                            _passwordController.clear();
                          } else {
                            // Show an error message for invalid credentials
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Invalid credentials')),
                            );
                          }
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical:  10,horizontal: 100),
                      ),
                      child: const Text('Login'),
                    ),

                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}