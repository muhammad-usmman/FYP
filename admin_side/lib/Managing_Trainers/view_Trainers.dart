import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';



class ViewTrainers extends StatefulWidget {
  @override
  _ViewTrainersState createState() => _ViewTrainersState();
}

class _ViewTrainersState extends State<ViewTrainers> {
  TextEditingController searchController = TextEditingController();
  // late Stream<QuerySnapshot> usersStream;
  bool isSearching = false;

  @override
  void initState() {
    super.initState();
    // usersStream = FirebaseFirestore.instance.collection('users').snapshots();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  void searchUsers(String searchTerm) {
    setState(() {
      isSearching = true;
      // usersStream = FirebaseFirestore.instance
      //     .collection('users')
      //     .where('name', isGreaterThanOrEqualTo: searchTerm)
      //     .snapshots();
    });
  }

  void cancelSearch() {
    setState(() {
      isSearching = false;
      searchController.clear();
      // usersStream = FirebaseFirestore.instance.collection('users').snapshots();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: !isSearching
            ? Text('View Trainers')
            : TextField(
          controller: searchController,
          onChanged: searchUsers,
          decoration: InputDecoration(
            hintText: 'Search Trainers...',
            border: InputBorder.none,
            hintStyle: TextStyle(color: Colors.black),
          ),
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          isSearching
              ? IconButton(
            icon: Icon(Icons.cancel),
            onPressed: cancelSearch,
          )
              : IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              setState(() {
                isSearching = true;
              });
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Users:',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            // Expanded(
            //   child: StreamBuilder<QuerySnapshot>(
            //     stream: usersStream,
            //     builder: (context, snapshot) {
            //       if (snapshot.hasError) {
            //         return Text('Error: ${snapshot.error}');
            //       }
            //       if (!snapshot.hasData) {
            //         return Center(child: CircularProgressIndicator());
            //       }
            //       final users = snapshot.data!.docs;
            //       if (users.isEmpty) {
            //         return Text('No users found');
            //       }
            //       return ListView.builder(
            //         itemCount: users.length,
            //         itemBuilder: (context, index) {
            //           final user = users[index].data() as Map<String, dynamic>;
            //           return ListTile(
            //             title: Text(user['name']),
            //             subtitle: Text(user['email']),
            //           );
            //         },
            //       );
            //     },
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
