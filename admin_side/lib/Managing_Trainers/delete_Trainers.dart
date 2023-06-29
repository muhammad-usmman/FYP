import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';



class DeleteTrainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trainer Management'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'DeleteTrainer:',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            DeleteTrainerForm(),
          ],
        ),
      ),
    );
  }
}

class DeleteTrainerForm extends StatefulWidget {
  @override
  _DeleteTrainerFormState createState() => _DeleteTrainerFormState();
}

class _DeleteTrainerFormState extends State<DeleteTrainerForm> {
  TextEditingController emailController = TextEditingController();

  void deleteTrainer() {
    String email = emailController.text.trim();

    if (email.isNotEmpty) {
      FirebaseFirestore.instance
          .collection('Trainers')
          .where('E-mail id', isEqualTo: email)
          .get()
          .then((snapshot) {
        snapshot.docs.forEach((doc) {
          doc.reference.delete();
        });
        emailController.clear();
        FocusScope.of(context).unfocus();
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Trainer deleted successfully')),
        );
      }).catchError((error) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to delete Trainer: $error')),
        );
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Please enter a Trainer's Email")),
      );
    }
  }

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: emailController,
            decoration: const InputDecoration(labelText: "Trainer Email"),
          ),
        ),
        const SizedBox(width: 16.0),
        ElevatedButton(
          onPressed: deleteTrainer,
          child: const Text('Delete'),
        ),
      ],
    );
  }
}
