import 'package:dummy_project/login.dart';
import 'package:flutter/material.dart';


class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign-up Page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // Container(
            //   width: w,
            //   height: h * 0.18,
            //   decoration: const BoxDecoration(
            //     image: DecorationImage(
            //         image: AssetImage("Images/home.jpeg"), fit: BoxFit.cover),
            //   ),
            // ),
            Container(
              padding: const EdgeInsets.fromLTRB(10,10,10,0),
              child: const TextField(
                //controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter User-name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: const TextField(
                obscureText: true,
                //controller: passwordController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter-Password',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: const TextField(
                obscureText: true,
                //controller: passwordController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Re-enter Password',
                ),
              ),
            ),
            // Container(
            //   child: TextField(
            //     scrollPadding: const EdgeInsets.all(10),

            //   )
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Text("If you don't have an account"),

                Container(
                  padding: const EdgeInsets.fromLTRB(10, 50, 0, 50),
                  child: const Text("If you already have an account"),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const Login();
                        },
                      ),
                    );
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
            Container(
                child: Center(
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Create Account'),
              ),
            )),
          ],
        ),
      ),
    );
  }
}