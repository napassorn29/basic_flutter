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
    // กลุ่มข้อมูล text widget เก็บไว้ในตัวแปรชื่อ data
    List<Widget> data = [];
    for (var i = 0; i < 10; i++) {
      data.add(Text("รายการที่ ${i + 1}"));
    }
    data.add(
      Text(
        "$number",
        style: TextStyle(fontSize: 60),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("program!!!"),
      ),
      body: Center(
        child: ListView(
          children: data,
        ),
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
