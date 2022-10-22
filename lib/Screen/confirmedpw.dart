import 'package:flutter/material.dart';
import 'package:tradix/general/appColor.dart';

class Confirmedpw extends StatefulWidget {
  const Confirmedpw({Key? key}) : super(key: key);

  @override
  State<Confirmedpw> createState() => _ConfirmedpwState();
}

class _ConfirmedpwState extends State<Confirmedpw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 100),
            height: 550,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/Group43.png',
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(height: 20.0),
          GestureDetector(
            onTap: () {
              // Navigator.pushReplacement(
              //   context,
              //   MaterialPageRoute(builder: (context) => Confirmedpw()),
              // );
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
        ],
      ),
    );
  }
}
