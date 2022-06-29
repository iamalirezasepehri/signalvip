import 'package:flutter/material.dart';

Widget getpost({required String imagename, required String title}) {
  return Column(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image(
          image: AssetImage('images/$imagename'),
        ),
      ),
      SizedBox(
        height: 10.0,
      ),
      Text(
        '  برای 26 آبان $title: سیگنال خرید',
        style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
      SizedBox(
        height: 10.0,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'خرید روی 26.200',
            style: TextStyle(color: Colors.green),
          ),
          SizedBox(
            width: 10.0,
          ),
          Icon(
            Icons.shopping_basket,
            color: Colors.green,
          ),
          SizedBox(
            width: 20.0,
          ),
          Text(
            'فروش روی 26.150',
            style: TextStyle(color: Colors.red),
          ),
          SizedBox(
            width: 10.0,
          ),
          Icon(
            Icons.sell,
            color: Colors.red,
          ),
        ],
      ),
      Container(
        width: 200.0,
        child: Divider(
          thickness: 1,
          color: Colors.black,
        ),
      ),
    ],
  );
}
