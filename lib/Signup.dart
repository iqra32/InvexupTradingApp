import 'package:flutter/material.dart';

import 'Screen/E_mailchangpw.dart';
import 'general/appColor.dart';

class SignUP extends StatefulWidget {
  SignUP({Key? key}) : super(key: key);

  @override
  State<SignUP> createState() => _SignUPState();
}

class _SignUPState extends State<SignUP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            // padding: const EdgeInsets.only(top: 50),
            height: 340,
            width: double.infinity,
            // decoration: const BoxDecoration(
            //   image: DecorationImage(
            //     image: AssetImage(
            //       'assets/login321.png',
            //     ),
            //     fit: BoxFit.fill,
            //   ),
            // ),
            child: Image.asset(
                'assets/login321.png',
                fit: BoxFit.fill,
              ),
          ),
         Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Create a Free Account',
                style: TextStyle(fontSize: 30),
              )),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: const [
                  SizedBox(
                    width: 235,
                    // height: 45,
                    child: TextField(
                      // controller: nameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),
                        labelText: 'E-mail',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                   width: 235, 
                    child: TextField(
                      // obscureText: true,
                      // controller: nameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        ),
                        labelText: 'Password',
                      ),
                    ),
                  ),
                ],
              )),
               SizedBox(
                    height: 20,
                  ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => EmailChnagepw()),
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
                'Singn Up',
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
              //     Navigator.pushReplacement(
              //   context,
              //   MaterialPageRoute(builder: (context) => EmailChnagepw()),
              // );
                },
                child: const Text(
                  'Login',
                  style: TextStyle(
                      // decoration: TextDecoration.underline,
                      // fontSize: 18,
                      color: Color.fromARGB(255, 158, 158, 158)),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
