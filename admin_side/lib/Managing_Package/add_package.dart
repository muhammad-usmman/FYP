import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';



class AddPackage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Package Management'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: AddPackageForm(),
      ),
    );
  }
}

class AddPackageForm extends StatefulWidget {
  @override
  _AddPackageFormState createState() => _AddPackageFormState();
}

class _AddPackageFormState extends State<AddPackageForm> {
  TextEditingController nameController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController priceController = TextEditingController();

  void addPackage() {
    String name = nameController.text.trim();
    String description = descriptionController.text.trim();
    double price = double.tryParse(priceController.text.trim()) ?? 0.0;

    // if (name.isNotEmpty && description.isNotEmpty && price > 0) {
    //   FirebaseFirestore.instance.collection('packages').doc(name).set({
    //     'name': name,
    //     'description': description,
    //     'price': price,
    //   }).then((value) {
    //     nameController.clear();
    //     descriptionController.clear();
    //     priceController.clear();
    //     FocusScope.of(context).unfocus();
    //     ScaffoldMessenger.of(context).showSnackBar(
    //       SnackBar(content: Text('Package added successfully')),
    //     );
    //   }).catchError((error) {
    //     ScaffoldMessenger.of(context).showSnackBar(
    //       SnackBar(content: Text('Failed to add package: $error')),
    //     );
    //   });
    // } else {
    //   ScaffoldMessenger.of(context).showSnackBar(
    //     SnackBar(content: Text('Please enter valid package details')),
    //   );
    // }
  }

  @override
  void dispose() {
    nameController.dispose();
    descriptionController.dispose();
    priceController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Add Package:',
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8.0),
        TextField(
          controller: nameController,
          decoration: InputDecoration(labelText: 'Name'),
        ),
        TextField(
          controller: descriptionController,
          decoration: InputDecoration(labelText: 'Description'),
        ),
        TextField(
          controller: priceController,
          keyboardType: TextInputType.numberWithOptions(decimal: true),
          decoration: InputDecoration(labelText: 'Price'),
        ),
        SizedBox(height: 16.0),
        ElevatedButton(
          onPressed: addPackage,
          child: Text('Add Package'),
        ),
      ],
    );
  }
}
