import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';



class ViewTrainers extends StatefulWidget {
  @override
  _ViewTrainersState createState() => _ViewTrainersState();
}

class _ViewTrainersState extends State<ViewTrainers> {
  TextEditingController searchController = TextEditingController();
  late Stream<QuerySnapshot> usersStream;
  bool isSearching = false;

  @override
  void initState() {
    super.initState();
    usersStream = FirebaseFirestore.instance.collection('Trainer').snapshots();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  void searchUsers(String searchTerm) {
    setState(() {
      isSearching = true;
      usersStream = FirebaseFirestore.instance
          .collection('Trainer')
          .where('Name', isGreaterThanOrEqualTo: searchTerm)
          .snapshots();
    });
  }

  void cancelSearch() {
    setState(() {
      isSearching = false;
      searchController.clear();
      usersStream = FirebaseFirestore.instance.collection('Trainer').snapshots();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: !isSearching
            ? const Text('View Trainers')
            : TextField(
          controller: searchController,
          onChanged: searchUsers,
          decoration: const InputDecoration(
            hintText: 'Search Trainers...',
            border: InputBorder.none,
            hintStyle: TextStyle(color: Colors.black),
          ),
          style: const TextStyle(color: Colors.black),
        ),
        actions: [
          isSearching
              ? IconButton(
               icon: const Icon(Icons.cancel),
            onPressed: cancelSearch,
          )
              : IconButton(
                icon: const Icon(Icons.search),
            onPressed: () {
              setState(() {
                isSearching = true;
              });
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Trainers:',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Expanded(
              child: StreamBuilder<QuerySnapshot>(
                stream: usersStream,
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  }
                  if (!snapshot.hasData) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  final Trainer = snapshot.data!.docs;
                  if (Trainer.isEmpty) {
                    return const Text('No Trainers found');
                  }
                  return ListView.builder(
                    itemCount: Trainer.length,
                    itemBuilder: (context, index) {
                      final Trainers = Trainer[index].data() as Map<String, dynamic>;
                      final name = Trainers['Name'] as String? ?? 'No Name'; // Corrected line
                      final email = Trainers['Email'] as String? ?? 'No Email'; // Corrected line
                      return ListTile(
                        title: Text(name),
                        subtitle: Text(email),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
