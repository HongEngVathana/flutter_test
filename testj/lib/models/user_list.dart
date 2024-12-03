import 'package:flutter/material.dart';
import 'dart:convert';
import '../models/user.dart'; // Import the User model

class UserListPage extends StatelessWidget {
  const UserListPage({super.key});

  final String userData = '''
  [
    {
      "username": "User 1",
      "email": "user1@gmail.com",
      "urlAvatar": "https://i.pinimg.com/474x/b2/82/c0/b282c05061dbb6afca9d7ad078290096.jpg"
    },
    {
      "username": "User 2",
      "email": "user2@gmail.com",
      "urlAvatar": "https://i.pinimg.com/474x/b2/82/c0/b282c05061dbb6afca9d7ad078290096.jpg"
    },
    {
      "username": "User 3",
      "email": "user3@gmail.com",
      "urlAvatar": "https://i.pinimg.com/474x/b2/82/c0/b282c05061dbb6afca9d7ad078290096.jpg"
    },
    {
      "username": "User 4",
      "email": "user4@gmail.com",
      "urlAvatar": "https://i.pinimg.com/474x/b2/82/c0/b282c05061dbb6afca9d7ad078290096.jpg"
    },
    {
      "username": "User 5",
      "email": "user5@gmail.com",
      "urlAvatar": "https://i.pinimg.com/474x/b2/82/c0/b282c05061dbb6afca9d7ad078290096.jpg"
    }, {
    "username": "User 5",
    "email": "user5@gmail.com",
     "urlAvatar": "https://i.pinimg.com/474x/9e/c4/e4/9ec4e4601d71a35ba780a3990158fa69.jpg"
  },
  {
    "username": "User 5",
    "email": "user5@gmail.com",
    "urlAvatar": "https://i.pinimg.com/474x/9e/c4/e4/9ec4e4601d71a35ba780a3990158fa69.jpg"
  }
  
  ]
  ''';

  List<User> parseUsers() {
    final List<dynamic> parsed = json.decode(userData);
    return parsed.map((json) => User.fromJson(json)).toList();
  }

  @override
  Widget build(BuildContext context) {
    List<User> users = parseUsers();

    return Column(
      children: [
        ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            final user = users[index];
            return Card(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(user.urlAvatar),
                ),
                title: Text(user.username),
                subtitle: Text(user.email),
              ),
            );
          },
        ),
      ],
    );
  }
}
