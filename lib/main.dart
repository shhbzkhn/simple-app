import 'package:flutter/material.dart';
import 'package:untitled/screens/home_page.dart';
import 'package:untitled/screens/login_page.dart';
import 'package:untitled/screens/signup.dart';
import 'package:untitled/utils/routes.dart';
import 'package:untitled/widgets/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.loginRoutes,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoutes: (context) => HomePage(),
        MyRoutes.loginRoutes: (context) => LoginPage(),
        MyRoutes.shoppingRoutes: (context) => HomePage(),
        MyRoutes.signupRoutes: (context) => Signup(),

      },
    );
  }
}
