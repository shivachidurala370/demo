import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: Colors.pink.shade200,
          shape: BoxShape.circle
        ),
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.cyan
        ),
        child: Stack(alignment: Alignment.center,
          children: [
            Positioned.fill(
                child: BottomAppBar(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Icon(Icons.home),
                      SizedBox(width: 60,),
                      Icon(Icons.home),
                      SizedBox(width: 140,),
                      Icon(Icons.home),
                      SizedBox(width: 60,),
                      Icon(Icons.home)
                    ],
                  ),
                )
            )
          ],
        ),
      )
      // BottomNavigationBar(
      //   backgroundColor: Colors.blue,
      //     selectedItemColor: Colors.black,
      //     items: [
      //   BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home'),
      //   BottomNavigationBarItem(icon: Icon(Icons.explore),label: 'Explore'),
      //   BottomNavigationBarItem(icon: Icon(Icons.notification_add),label: 'Notfications'),
      //   BottomNavigationBarItem(icon: Icon(Icons.notification_add),label: 'Notfications'),
      // ]),
    );
  }
}
