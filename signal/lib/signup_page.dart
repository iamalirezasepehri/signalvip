import 'package:flutter/material.dart';
import 'package:signal/blog_page.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'ورود به اپلیکیشن سیگنال',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
          Image(image: AssetImage('images/w.png')),
          OutlinedButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return blogpage();
              }));
            },
            child: Text('ورود به حساب'),
            style: OutlinedButton.styleFrom(
              primary: Colors.black,
              side: BorderSide(
                width: 1.0,
                color: Colors.black,
              ),
              minimumSize: Size(200.0, 40.0),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('ثبت نام'),
            style: ElevatedButton.styleFrom(
              minimumSize: Size(200.0, 40.0),
              primary: Colors.black,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text('فراموشی رمز عبور'),
            style: TextButton.styleFrom(
              primary: Colors.black,
            ),
          ),
        ],
      )),
    );
  }
}
