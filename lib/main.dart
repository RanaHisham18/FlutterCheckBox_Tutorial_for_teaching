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
      home: Scaffold(
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isChecked = false;
  //this is a boolean variable that save the initial state of the checkbox which is (NOT CHECKED)

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Checkbox(
        //here we assign that the value of the checkbox will be taken from the variable called isChecked
      value: isChecked,
        //now we have to add onChanged function that is similar to onPressed in buttons, means when the state changes
        onChanged: (newBool) {
        //newBool is the new variable for the true state (CHECKED)
          setState(() {
            isChecked = newBool!;
            //here we have to set the new state to change the ui
          });
      },
      ),

    );
  }
}
