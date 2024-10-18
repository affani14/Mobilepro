import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key:key);

  @override
  State<Homepage> createState() => HomepageState();
}

class HomepageState extends State<Homepage> with SingleTickerProviderStateMixin {
  late TabController tabC = TabController(length: 4, vsync: this);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text("Whatsapp"),
        centerTitle: false,
        bottom: TabBar(
          controller: tabC,
          tabs: [
            const Tab(
              icon: Icon(Icons.camera_alt),
            ),
            const Tab( text: "Chat",
            ),
            const Tab( text: "Status",
            ),
            const Tab( text: "Calls",
            ),
          ],
        ),
      ),
      body: TabBarView(controller: tabC,
          children: [
            const Center(
              child: Text("Camera"),
            ),
            const Center(
              child: Text("Chat"),
            ),
            const Center(
              child: Text("Status"),
            ),
            const Center(
              child: Text("Calls"),
            ),
          ],
        ),
      );
  }
}