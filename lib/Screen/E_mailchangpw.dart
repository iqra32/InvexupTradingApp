import 'package:flutter/material.dart';

import 'package:tradix/Screen/confirmedpw.dart';

import '../general/appColor.dart';

class EmailChnagepw extends StatefulWidget {
  const EmailChnagepw({Key? key}) : super(key: key);

  @override
  State<EmailChnagepw> createState() => _EmailChnagepwState();
}

class _EmailChnagepwState extends State<EmailChnagepw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 1000),
            height: 410,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/chnagepw.png',
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            "We have sent you an\n email to change your\n password ",
            style: TextStyle(
              fontSize: 20,
                fontWeight: FontWeight.bold, color: Color(0xFF656565)),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 40,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Confirmedpw()),
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
                'RESEND EMAIL',
                style: TextStyle(color: Colors.white),
              )),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            "Wiat 30 seconds before sending it ",
            style: TextStyle(color: Color(0xFF656565)),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
