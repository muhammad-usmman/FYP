import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:admin_side/constants.dart';




class Delete_User extends StatefulWidget {
  @override
  _Delete_UserState createState() => _Delete_UserState();
}

class _Delete_UserState extends State<Delete_User> {
  final emailController = TextEditingController();

  void deleteUser(String email) {
    FirebaseFirestore.instance
        .collection('Member')
        .where('E-mail id', isEqualTo: email)
        .get()
        .then((snapshot) {
      snapshot.docs.forEach((doc) {
        doc.reference.delete();
      });
      emailController.clear();
      FocusScope.of(context).unfocus();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Member deleted successfully')),
      );
    }).catchError((error) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to delete Member: $error')),
      );
    });
  }

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white70,
          title: const  Text('Delete Member')
      ),
      body: Padding(

        padding: kpda20,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'E-mail id',
              ),
            ),
            gaph20,
            ElevatedButton(
              onPressed: () => deleteUser(emailController.text.trim()),
              child: Text('Delete Member'),
            ),
          ],
        ),
      ),
    );
  }
}
