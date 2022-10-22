import 'package:flutter/material.dart';
import 'package:tradix/Signup.dart';
import 'package:tradix/general/appColor.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.transparent,
      body: Column(children: [
        Container(
          padding: const EdgeInsets.only(top: 50),
          height: 340,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/login321.png',
              ),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Welcome!',
              style: TextStyle(fontSize: 30),
            )),
        Container(
          height: 70,
          width: 250,
          padding: const EdgeInsets.all(10),
          child: TextField(
            // controller: nameController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(20.0))),
              labelText: 'E-mail',
            ),
          ),
        ),
        Container(
          height: 70,
          width: 250,
          padding: const EdgeInsets.all(10),
          child: TextField(
            obscureText: true,
            // controller: nameController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderRadius: const BorderRadius.all(Radius.circular(20.0)),
              ),
              labelText: 'Password',
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => SignUP()),
            );
          },
          child: Container(
            height: 50,
            width: 230,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(20.0)),
              gradient: LinearGradient(
                  colors: AppColors().bottomFooterGradient,
                  begin: Alignment.topRight,
                  end: Alignment.bottomRight),
            ),
            child: const Center(
                child: Text(
              'Login',
              style: TextStyle(color: Colors.white),
            )),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              onPressed: () {},
              child: const Text(
                'Forgot Password?',
                style: TextStyle(
                  // decoration: TextDecoration.underline,
                  // fontSize: 18,
                  color: Colors.grey,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, 'register');
              },
              child: const Text(
                'Sign Up',
                style: TextStyle(
                    // decoration: TextDecoration.underline,
                    // fontSize: 18,
                    color: Color.fromARGB(255, 158, 158, 158)),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
