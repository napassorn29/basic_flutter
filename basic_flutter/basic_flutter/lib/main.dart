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

  // กลุ่มข้อมูล
  List<foodMenu> menu = [
    foodMenu("กุ้งเผา", "500", "assets/images/picture1.jpg"),
    foodMenu("ปลาทอด", "80", "assets/images/picture2.jpg"),
    foodMenu("ส้มตำ", "60", "assets/images/picture3.jpg"),
    foodMenu("ผัดไท", "40", "assets/images/picture4.jpg")
  ];

  // แสดงผลข้อมูล
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("เลือกเมนูอาหาร"),
        ),
        body: ListView.builder(
            itemCount: menu.length,
            itemBuilder: (BuildContext context, int index) {
              foodMenu food = menu[index];
              return ListTile(
                leading: Image.asset(food.img),
                title: Text(
                  food.name,
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text("ราคา " + food.price + " บาท"),
                onTap: () {
                  print("คุณเลือกเมนูอาหาร " + food.name);
                },
              );
            }));
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

// เตรียมข้อมูล
  List<Widget> getData(int count) {
// กลุ่มข้อมูล text widget เก็บไว้ในตัวแปรชื่อ data
    List<Widget> data = [];
    for (var i = 0; i < count; i++) {
      var menu = ListTile(
        title: Text(
          "เมนูที่ ${i + 1}",
          style: TextStyle(fontSize: 20),
        ),
        subtitle: Text("หัวข้อย่อยที่ ${i + 1}"),
      );
      data.add(menu);
    }
    data.add(
      Text(
        "$number",
        style: TextStyle(fontSize: 60),
      ),
    );
    return data;
  }
}
