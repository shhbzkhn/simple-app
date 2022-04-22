import 'package:flutter/material.dart';
import 'package:untitled/utils/routes.dart';
import 'package:untitled/widgets/drawer.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool changeButton = false;
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoutes);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        endDrawer: MyDrawer(),
        body: SafeArea(
          child: Column(
            children: [
              IconButton(
                  onPressed: () {
                    _scaffoldKey.currentState?.openEndDrawer();
                  },
                  icon: const Icon(Icons.wb_cloudy)),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/hey.png",
                      fit: BoxFit.cover,
                      // height: 300,
                    ),
                    const SizedBox(
                      height: 20.0,
                      // child: Text("shahbaz"),
                    ),
                    const Text(
                      "WELCOME",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: const InputDecoration(
                                hintText: "Enter User  Name",
                                labelText: "User Name"),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Username cannot be empty";
                              }
                            },
                          ),
                          TextFormField(
                            obscureText: true,
                            decoration: const InputDecoration(
                                hintText: "Enter Password",
                                labelText: "Password"),
                            validator: (value) {
                              if (value != null) {
                                if (value.isEmpty) {
                                  return "Password cannot be empty";
                                } else if (value.length < 6) {
                                  return "Password length cannot be less than 6";
                                }
                              }
                            },
                          ),

                          SizedBox(
                            height: 20.0,
                            // child: Text("shahbaz"),
                          ),

                          Material(
                            color: Colors.deepPurple,
                            borderRadius:
                                BorderRadius.circular(changeButton ? 50 : 8),
                            child: InkWell(
                              onTap: () => moveToHome(context),
                              child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                width: changeButton ? 50 : 150,
                                height: 40,
                                // color: Colors.deepPurple,
                                alignment: Alignment.center,
                                child: changeButton
                                    ? Icon(
                                        Icons.done,
                                        color: Colors.white,
                                      )
                                    : Text(
                                        "Login",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),

                                      ),
                              ),
                            ),
                          ),
                          ElevatedButton(
                            child: Text("Signup"),
                            style: TextButton.styleFrom(minimumSize: Size(80, 40)),
                            onPressed: () {
                             Navigator.pushNamed(context, MyRoutes.signupRoutes);
                            },
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
