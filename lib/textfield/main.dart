import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key:key);

  @override
    State<Homepage> createState() => HomepageState();
}

class HomepageState extends State<Homepage> {
  bool isHidden = true;
  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();

  @override
  Widget build(BuildContext){
  return Scaffold(
    appBar : AppBar(
      title: Text("Text Field"),
    ),
    body: ListView(
      padding: EdgeInsets.all(20),
      children: [
      TextField(
        controller: emailC,
        autocorrect: false,
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          labelText: "Email",
          border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        prefixIcon: Icon(Icons.email),
    ),
  ),
    SizedBox(height: 20,),
      TextField(
        controller: emailC,
        autocorrect: false,
        obscureText: isHidden,
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          labelText: "Password",
          border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        prefixIcon: Icon(Icons.vpn_key),
        suffixIcon: IconButton(
         onPressed: (){
            if (isHidden == true){
              isHidden = false;
             } else {
              isHidden == true;
              }
              setState(() {});
            },
            icon: Icon(Icons.remove_red_eye),
            ),
          ),
        ),
        SizedBox(height: 50),
          ElevatedButton(
            onPressed: (){
            print("Login dengan : email (${emailC.text}) & Pass (${passC.text})");
           },
            child: Text("Login"),
            style: ElevatedButton.styleFrom(
              backgroundColor : Colors.red[900],
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
        ],
      ),
    );
  }
}