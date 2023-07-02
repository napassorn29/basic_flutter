import 'package:flutter/material.dart';
//import 'package:flutter/src/material/colors.dart';

void main() {
  var app = MyApp();
  runApp(app);
}

// เปลี่ยนแปลงค่าไม่ได้ = stateless
// เปลี่ยนแปลงค่าได้ = stateful

// center widget ครอบแล้วจะอยู่ตรงกลางหน้าจอ

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: MyHomePage(),
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int number = 0; // build state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("program!!!"),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("กดปุ่มเพื่อเพิ่มจำนวนตัวเลข"),
          //number.tostring(),
          Text(
            "$number",
            style: TextStyle(fontSize: 60),
          ),
        ]),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: addNumber,
            child: Icon(Icons.add),
          ),
          SizedBox(
            height: 16,
            width: 16,
          ), // Add some spacing between the buttons
          FloatingActionButton(
            onPressed: minusNumber,
            child: Icon(Icons.exposure_minus_1),
          ),
        ],
      ),
    );
  }

  void addNumber() {
    setState(() {
      number++;
    });
  }

  void minusNumber() {
    setState(() {
      number--;
    });
  }
}
