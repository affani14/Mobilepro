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
        title: const Text("Bottom Sheet"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(38),
          child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                isDismissible: false,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(26),
                ),
                builder: (context) =>
                    SizedBox(
                      height: 300,
                      child: ListView(
                        children: [
                          ListTile(
                            onTap: () => print("KLIK PHOTO"),
                            leading: const Icon(Icons.photo),
                            title: const Text("Photo"),
                          ),
                          ListTile(
                            onTap: () => print("KLIK MUSIC"),
                            leading: const Icon(Icons.music_note_rounded),
                            title: const Text("Music"),
                          ),
                          ListTile(
                            onTap: () => print("KLIK VIDEO"),
                            leading: const Icon(Icons.video_collection),
                            title: const Text("Video"),
                          ),
                          ListTile(
                            onTap: () => print("KLIK SHARE"),
                            leading: const Icon(Icons.share),
                            title: const Text("Share"),
                          ),
                          ListTile(
                            onTap: () => Navigator.pop(context),
                            leading: const Icon(Icons.cancel),
                            title: const Text("Cancel"),
                          ),
                        ],
                      ),
                    ),
              );
            },
            child: const Text("Show Bottom Sheet"),
          ),
        ),
      ),
    );
  }
}