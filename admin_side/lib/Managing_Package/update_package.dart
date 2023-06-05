import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';



class UpdatePackage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Package Management'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Update Package:',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            UpdatePackageForm(),
          ],
        ),
      ),
    );
  }
}

class UpdatePackageForm extends StatefulWidget {
  @override
  _UpdatePackageFormState createState() => _UpdatePackageFormState();
}

class _UpdatePackageFormState extends State<UpdatePackageForm> {
  TextEditingController nameController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController priceController = TextEditingController();

  void updatePackage() {
    String name = nameController.text.trim();
    String description = descriptionController.text.trim();
    double price = double.tryParse(priceController.text.trim()) ?? 0.0;

    // if (name.isNotEmpty && description.isNotEmpty && price > 0) {
    //   FirebaseFirestore.instance.collection('packages').doc(name).update({
    //     'description': description,
    //     'price': price,
    //   }).then((value) {
    //     nameController.clear();
    //     descriptionController.clear();
    //     priceController.clear();
    //     FocusScope.of(context).unfocus();
    //     ScaffoldMessenger.of(context).showSnackBar(
    //       SnackBar(content: Text('Package updated successfully')),
    //     );
    //   }).catchError((error) {
    //     ScaffoldMessenger.of(context).showSnackBar(
    //       SnackBar(content: Text('Failed to update package: $error')),
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
      children: [
        TextField(
          controller: nameController,
          decoration: InputDecoration(labelText: 'Package Name'),
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
          onPressed: updatePackage,
          child: Text('Update'),
        ),
      ],
    );
  }
}
