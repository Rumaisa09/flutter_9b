import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext Context) {
    return MaterialApp(
      title: 'Data Display Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DataListScreen(),
    );
  }
}

class DataListScreen extends StatelessWidget {
  final List<Map<String, dynamic>> dataList = [
    {'name': 'Item 1', 'description': 'This is the first item', 'price': 100},
    {'name': 'Item 2', 'description': 'This is the second item', 'price': 150},
    {'name': 'Item 3', 'description': 'This is the third item', 'price': 200},
    {'name': 'Item 4', 'description': 'This is the fourth item', 'price': 250},
    {'name': 'Item 5', 'description': 'This is the fifth item', 'price': 300},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data list'),
      ),
      body: ListView.builder(
        itemCount: dataList.length,
        itemBuilder: (context, index) {
          final item = dataList[index];
          return Card(
            margin: EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(item['name']),
              subtitle: Text(item['description']),
              trailing: Text('\$${item['price']}'),
            ),
          );
        },
      ),
    );
  }
}
