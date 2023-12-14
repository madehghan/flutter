import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text('Hello World!'),
          centerTitle: true,
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('Your Name'),
                accountEmail: Text('your@email.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage('https://example.com/your-image.jpg'),
                ),
              ),
              ListTile(
                title: Text('Drawer Item 1'),
                onTap: () {
                  // Handle the tap for Drawer Item 1
                },
              ),
              ListTile(
                title: Text('Drawer Item 2'),
                onTap: () {
                  // Handle the tap for Drawer Item 2
                },
              ),
              // Add more Drawer items as needed
            ],
          ),
        ),
      ),
    );
  }
}
