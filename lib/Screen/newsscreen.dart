import 'package:flutter/material.dart';

class NewsScreen extends StatefulWidget {
  NewsScreen({Key? key}) : super(key: key);

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios_new,
          color: Colors.black,
          size: 16.0,
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
            onPressed: () {},
          )
        ],
        backgroundColor: Colors.white,
        title: Text(
          'NEWS',
          style: TextStyle(color: Colors.black, fontSize: 14),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: const AssetImage('assets/bgappbar.png'),
                  fit: BoxFit.fill)),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 175,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
