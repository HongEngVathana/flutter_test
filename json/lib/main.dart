import 'package:flutter/material.dart';
import 'dart:convert'; // For JSON decoding
import 'package:flutter/services.dart'; // For rootBundle
import 'package:json/models/json_model.dart'; // Import your JsonModel class

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Local JSON'),
        ),
        body: const HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Future<List<JsonModel>> getData() async {
    // Load the JSON file
    String jsonData = await rootBundle.loadString('assets/local.json');

    // Decode JSON data into a List
    List<dynamic> jsonList = json.decode(jsonData);

    // Map JSON list to List<JsonModel>
    return jsonList.map((e) => JsonModel.fromMap(e)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<JsonModel>>(
      future: getData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (snapshot.hasData) {
          List<JsonModel> data = snapshot.data!;
          return ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              return Card(
                margin: const EdgeInsets.all(10.0),
                child: ListTile(
                  title: Text(data[index].name ?? 'No Name'),
                  subtitle: Text(data[index].major ?? 'No Major'),
                ),
              );
            },
          );
        } else {
          return const Center(child: Text('No data available.'));
        }
      },
    );
  }
}
