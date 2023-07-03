import 'package:flutter/material.dart';
import 'foodMenu.dart';
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
        primarySwatch: Colors.lightBlue,
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
          title: Text("รายรับ รายจ่าย"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              //กล่องที่ใช้จองพื้นที่ ใส่รูปใส่สีได้
              Container(
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 212, 251, 167),
                    borderRadius: BorderRadius.circular(10)),
                height: 100,
                child: Row(
                  children: [Text("คงเหลือ"), Text("15000")],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 142, 179, 100),
                    borderRadius: BorderRadius.circular(10)),
                height: 100,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 106, 144, 64),
                    borderRadius: BorderRadius.circular(10)),
                height: 100,
              )
            ],
          ),
        ));
  }
}
