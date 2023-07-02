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
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello flutter"),
        ),
        body: Center(
          // child รับได้แค่ widget ตัวเดียว
          child: Column(children: [
            Text("hello"),
            Text("everyone"),
            Text("happy happy happy")
          ]),
        ),
      ),
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
    );
  }
}
