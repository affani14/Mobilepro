import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drawer"),
      ),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.bottomLeft,
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              height: 150,
              color: Colors.blue,
              child: const Text(
                "DASHBOARD MENU",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  ListTile(
                    onTap: () {
                      print("PINDAH KE PAGE HOME");
                    },
                    leading: const Icon(Icons.home),
                    title: const Text("Home"),
                  ),
                  ListTile(
                    onTap: () {
                      print("PINDAH KE PAGE PRODUCT");
                    },
                    leading: const Icon(Icons.shopping_bag),
                    // Ikon tambahan untuk Product
                    title: const Text("Product"),
                  ),
                  ListTile(
                    onTap: () {
                      print("PINDAH KE PAGE PROFILE");
                    },
                    leading: const Icon(Icons.person), // Ikon untuk Profil
                    title: const Text("Profile"),
                  ),
                  ListTile(
                    onTap: () {
                      print("PINDAH KE PAGE SETTINGS");
                    },
                    leading: const Icon(Icons.settings),
                    title: const Text("Settings"),
                  ),
                  ListTile(
                    onTap: () {
                      print("PINDAH KE ABOUT");
                    },
                    leading: const Icon(Icons.info),
                    title: const Text("About"),
                  ),
                  ListTile(
                    onTap: () {
                      print("PINDAH KE PAGE HELP");
                    },
                    leading: const Icon(Icons.help),
                    title: const Text("Help"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}