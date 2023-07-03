import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// สร้าง container
// ignore: must_be_immutable
class MoneyBox extends StatelessWidget {
  String title; //ชื่อรายการ
  double amount;
  Color color;
  double size; //ขนาดกล่อง

  MoneyBox(this.title, this.amount, this.color, this.size);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
      height: size,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: Text('${NumberFormat("#,###.##").format(amount)}',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.right),
          )
        ],
      ),
    );
  }
}
