import 'package:flutter/material.dart';
import 'package:tradix/Screen/login.dart';

import '../general/appColor.dart';

class OnboardingScreen extends StatefulWidget {
  OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
              const  SizedBox(
                  height: 120.0,
                ),
                const Icon(Icons.arrow_back_ios),
               const  SizedBox(
                  width: 250.0,
                ),
               const  Text(
                  "Skip",
                  textAlign: TextAlign.right,
                ),
              ],
            ),
          ),
       const    SizedBox(
            height: 20.0,
          ),
        const   Text(
            "Follow our tipsto\n achieve  success!",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text("Ex totam praesentium incidunt aut."),
          SizedBox(
            height: 20.0,
          ),
          Image(
            image: AssetImage('assets/vector bg.png'),
          ),
          SizedBox(
            height: 40.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                width: 40.0,
                height: 10.0,
              ),
              Image.asset(
                'assets/cursor.png',
                width: 70,
                height: 70,
              ),
              SizedBox(
                width: 100.0,
                height: 10.0,
              ),
              // Expanded(child: Container(height: 50.0)),

              // Pill shaped
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.fromLTRB(2, 10, 20, 10),
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(60.0)),
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
            ],
          ),
        ],
      ),
    );
  }
}
