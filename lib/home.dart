import 'package:dummy_project/login.dart';
import 'package:dummy_project/signup.dart';
import 'package:flutter/material.dart';


class Rootpage extends StatefulWidget {
  const Rootpage({super.key});

  @override
  State<Rootpage> createState() => _RootpageState();
}

class _RootpageState extends State<Rootpage> {
  //int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context)
        .size
        .width; // media query used to get the device dimensions
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      //body: Login(),
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: SingleChildScrollView(
        child: Column(
          //vertical components
          children: [
            Container(
              width: w,
              height: h * 0.3,
              decoration: const BoxDecoration(
                //creates a box which is to be painted on the screen
                image: DecorationImage(
                    image: AssetImage("Images/home.jpeg"), fit: BoxFit.cover),
              ),
            ),
            const Center(
              child: Text(
                'Welcome!',
                style: TextStyle(
                  color: Color.fromARGB(255, 12, 155, 226),
                  fontSize: 50,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              height: 50,
              width: 200,
              padding: const EdgeInsets.fromLTRB(25, 5, 25, 5),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const Login();
                      },
                    ),
                  );
                },
                child: Text('Login'),
              ),
            ),
            Container(
              height: 50,
              width: 200,
              padding: const EdgeInsets.fromLTRB(25, 5, 25, 5),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const Signup();
                      },
                    ),
                  );
                },
                child: const Text('Sign-Up'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}