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
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => HomepageState();
}

class HomepageState extends State<Homepage> {
  final List data = [
    {
      "judul": "Pilihan ke - 1",
      "data" : 1,
    },
    {
      "judul": "Pilihan ke - 2",
      "data": 2,
    },
    {
      "judul": "Pilihan ke - 3",
    "data": 3,
    },
  ];

  late int dataAwal;

  @override
  void initState() {
    dataAwal = data[1]["data"];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DropDown"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: DropdownButton<int>(
            value: dataAwal,
            items: data
                .map((e) => DropdownMenuItem(
                    child: Text("${e['judul']}"),
                    value: e['data'] as int,
                  ),
                )
                .toList(),
                  onChanged: (value) {
                  setState(() {
                    dataAwal = value!;
                });
            },
          ),
        ),
      ),
    );
  }
}