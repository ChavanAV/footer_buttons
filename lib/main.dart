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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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

  String v="";
  void setstate(String val){
    setState(() {
      v=val;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hi"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          children: [
            Text(v),
          ],
        ),
      ),
      persistentFooterButtons: [
        IconButton(onPressed: () => setstate("First"),
            alignment: Alignment.center,
            icon: Icon(Icons.safety_check)),
        IconButton(onPressed: () => setstate("second"), icon: Icon(Icons.account_circle)),
        IconButton(onPressed: () => setstate("thired"), icon: Icon(Icons.adb_rounded)),
      ],
    );
  }
}
