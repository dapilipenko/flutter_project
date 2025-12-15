import 'package:flutter/material.dart';
import 'widgets/basic_layout.dart';
import 'widgets/listview_layout.dart';
import 'widgets/complex_layout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layouts',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Layouts')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                'Виберіть Layout',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: Icon(Icons.grid_view),
              title: Text('Основний Layout'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BasicLayout()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.list),
              title: Text('ListView'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ListViewLayout()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.layers),
              title: Text('Складний Layout'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ComplexLayout()),
                );
              },
            ),
          ],
        ),
      ),
      body: Builder(
        builder: (BuildContext context) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Виберіть layout у Drawer', style: TextStyle(fontSize: 18)),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => Scaffold.of(context).openDrawer(),
                child: Text('Відкрити Drawer'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
