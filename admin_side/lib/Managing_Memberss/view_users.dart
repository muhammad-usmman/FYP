import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';



class View_Users extends StatefulWidget {
  const View_Users({super.key});

  @override
  _View_UsersState createState() => _View_UsersState();
}

class _View_UsersState extends State<View_Users> {
  TextEditingController searchController = TextEditingController();
  late Stream<QuerySnapshot> usersStream;
  bool isSearching = false;

  @override
  void initState() {
    super.initState();
    usersStream = FirebaseFirestore.instance.collection('Member').snapshots();
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
          .collection('Member')
          .where('Name', isGreaterThanOrEqualTo: searchTerm)
          .snapshots();
    });
  }

  void cancelSearch() {
    setState(() {
      isSearching = false;
      searchController.clear();
      usersStream = FirebaseFirestore.instance.collection('Member').snapshots();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: !isSearching
            ? const Text('View Members')
            : TextField(
          controller: searchController,
          onChanged: searchUsers,
          decoration: const InputDecoration(
            hintText: 'Search members...',
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
              'Members:',
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
                  final Member = snapshot.data!.docs;
                  if (Member.isEmpty) {
                    return const Text('No members found');
                  }
                  return ListView.builder(
                    itemCount: Member.length,
                    itemBuilder: (context, index) {
                      final user = Member[index].data() as Map<String, dynamic>;
                      final name = user['Name'] as String? ?? 'No Name'; // Corrected line
                      final email = user['E-mail id'] as String? ?? 'No Email'; // Corrected line
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
