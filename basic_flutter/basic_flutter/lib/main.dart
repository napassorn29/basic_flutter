import 'package:flutter/material.dart';
import 'MoneyBox.dart';
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
        primarySwatch: Colors.purple,
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
  // แสดงผลข้อมูล
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "รายรับ รายจ่าย",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              MoneyBox("ยอดคองเหลือ", 10000,
                  const Color.fromARGB(255, 182, 249, 184), 120),
              SizedBox(
                height: 5,
              ),
              MoneyBox(
                  "รายรับ", 15000.50, Color.fromARGB(255, 95, 236, 255), 120),
              SizedBox(
                height: 5,
              ),
              MoneyBox("รายจ่าย", 5000, Color.fromRGBO(255, 111, 183, 1), 120),
            ],
          ),
        ));
  }
}
