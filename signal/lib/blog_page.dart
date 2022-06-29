import 'package:flutter/material.dart';
import 'package:signal/custom_widgets/postwidgets.dart';

class blogpage extends StatelessWidget {
  const blogpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'اخبار و سیگنال های مهم',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                getpost(imagename: 'a.png', title: 'Alchemy pay'),
                getpost(imagename: 'c.png', title: 'Cosmos'),
                getpost(imagename: 'r.png', title: 'ripple'),
                getpost(imagename: 's.png', title: 'SafeMoon'),
                TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.red,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'خروج از حساب',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17.0,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
