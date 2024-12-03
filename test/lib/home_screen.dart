import 'package:flutter/material.dart';
import 'package:test/saerch_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          "Flutter",
          style: TextStyle(color: Colors.white),
        ),
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
        actions: const [
          Icon(
            Icons.shopping_bag,
            color: Colors.white,
          )
        ],
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300,
                height: 300,
                child: Image.network(
                  "https://i.pinimg.com/736x/d4/ee/15/d4ee158a5379f6fb4bdc776c817e0b24.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: 300,
                height: 300,
                child: Image.network(
                  "https://i.pinimg.com/736x/d4/ee/15/d4ee158a5379f6fb4bdc776c817e0b24.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: 300,
                height: 300,
                child: Image.network(
                  "https://i.pinimg.com/736x/d4/ee/15/d4ee158a5379f6fb4bdc776c817e0b24.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: 300,
                height: 300,
                child: Image.network(
                  "https://i.pinimg.com/736x/d4/ee/15/d4ee158a5379f6fb4bdc776c817e0b24.jpg",
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 240, 236, 245),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SaerchScreen(),
                  ),
                );
              },
              icon: const Icon(
                Icons.home,
              ),
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
              ),
              label: "Search"),
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite),
              ),
              label: "Search"),
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.person),
              ),
              label: "Search"),
        ],
      ),
    );
  }
}
