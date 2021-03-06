import 'package:artistic_ui/artistic_ui.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CustomButton(
              onPressed: () {},
              text: "This is your text",
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: CustomButtonDoubleText(
              onPressed: () {},
              containerColor: Colors.pinkAccent,
              lowerText: "Lower Text",
              upperTextColor: Colors.white,
              upperText: "Upper Text",
            ),
          ),
        ],
      ),
    );
  }
}
