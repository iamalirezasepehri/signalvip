import 'package:flutter/material.dart';
import 'package:signal/blog_page.dart';
import 'package:signal/password_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'خوش آمدید',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
                SizedBox(width: 15.0),
                Icon(Icons.login),
              ],
            ),
            Image(
              image: AssetImage('images/welcome.png'),
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                minimumSize: Size(200.0, 40.0),
                side: BorderSide(
                  color: Colors.black,
                  width: 2.0,
                ),
                primary: Colors.black,
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext context) {
                    return blogpage();
                  }),
                );
              },
              child: Text('ورود به حساب کاربری'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('ثبت نام'),
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                minimumSize: Size(200.0, 40.0),
              ),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => PasswordPage(),
                  ),
                );
              },
              child: Text('فراموشی رمز عبور'),
              style: OutlinedButton.styleFrom(
                primary: Colors.black,
                backgroundColor: Colors.white,
                minimumSize: Size(200.0, 40.0),
              ),
            )
          ],
        ),
      )),
    );
  }
}
