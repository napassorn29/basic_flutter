import 'package:flutter/material.dart';

void main() {
  //material app
  //ชื่อ propoty ตามด้วย :
  var app = MaterialApp(
    title: "My App",
    home: Scaffold(
      appBar: AppBar(
        title: Text("Hello flutter"),
      ),
      body: Text("helloooooo"),
    ),
    // scaffold = หน้าต่างสำเร็จรูป
  );
  runApp(app);
}
