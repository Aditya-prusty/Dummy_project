import 'package:dummy_project/signup.dart';
import 'package:flutter/material.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // Container(
            //   width: w,
            //   height: h * 0.3,
            //   decoration: const BoxDecoration(
            //     image: DecorationImage(
            //         image: AssetImage("Images/home.jpeg"), fit: BoxFit.cover),
            //   ),
            // ),
            Container(
              padding: const EdgeInsets.all(10),
              child: const TextField(
                //controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: const TextField(
                obscureText: true,
                //controller: passwordController,
                decoration: InputDecoration(
                  border:
                      OutlineInputBorder(), // focusedborder: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            Row(
              children: [
                //Text("If you don't have an account"),

                Container(
                  padding: const EdgeInsets.fromLTRB(40, 50, 0, 50),
                  child: const Text("If you don't have an account"),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const Signup();
                        },
                      ),
                    );
                  },
                  child: const Text(
                    "Sign-up",
                    style: TextStyle(fontSize: 15),
                  ),
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            Container(
              child: Center(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Sign In'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
