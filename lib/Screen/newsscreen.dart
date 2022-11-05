import 'package:flutter/material.dart';

import '../utils/data.dart';

class NewsScreen extends StatefulWidget {
  // NewsScreen({Key? key}) : super(key: key);

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  List<News> newsList = [
    News(
      name: "ATLANTIA",
      date: "3 Sep 2020",
      description:
          "lllum velit nam voluptatum enim aut ratione officiis tatom.Mollitia eum sint tempora ducimus.",
      text: "ALT-3.87%",
      image: "assets/mobile.png",
    ),
    News(
      name: "XIAOMI",
      date: "2 Sep 2020",
      description:
          "lllum velit nam voluptatum enim aut ratione officiis tatom.Mollitia eum sint tempora ducimus.",
      text: "HDK-2.13%",
      image: "assets/mobile.png",
    ),
    News(
      name: "APPLE",
      date: "1 Sep 2020",
      description:
          "lllum velit nam voluptatum enim aut ratione officiis tatom.Mollitia eum sint tempora ducimus.",
      text: "APPI-0.91%",
      image: "assets/mobile.png",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: const Icon(
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
          title: const Text(
            'NEWS',
            style: TextStyle(color: Colors.black, fontSize: 14),
          ),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/bgappbar.png'),
                    fit: BoxFit.fill)),
          ),
        ),
        body: Column(
          children: [
            Container(
              height: 660,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xFFE8E8E8),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(40.0)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TabBar(
                        // indicatorWeight: 1.0,
                        // indicatorPadding: EdgeInsets.zero,
                        padding: EdgeInsets.zero,
                        // labelPadding: EdgeInsets.zero,
                        indicatorSize: TabBarIndicatorSize.tab,
                        isScrollable: true,
                        labelColor: Colors.black,
                        indicator: BoxDecoration(
                          color: const Color(0xFF0CF2B4),
                          borderRadius: BorderRadius.circular(70),
                        ),

                        // unselectedLabelColor: ,
                        tabs: const [
                          Tab(
                            text: "EDITORIAL",
                          ),
                          Tab(
                            text: "CRYPTO NEWS",
                          ),
                          Tab(
                            text: "RAW MATERIAL",
                          ),
                          Tab(
                            text: "ECONOMIC",
                          ),
                        ]),
                    // SizedBox(height: 05.0),
                    Container(
                      margin: const EdgeInsets.all(15.0),
                      width: 300.0,
                      height: 150.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              image: AssetImage("assets/image.png"),
                              fit: BoxFit.cover)),
                    ),
                    Expanded(
                      child: ListView.builder(
                          itemCount: newsList.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5)),
                                height: 104,
                                width: double.infinity,
                                child: Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(5),
                                      child: Image(
                                        height: 104,
                                        width: 102,
                                        fit: BoxFit.cover,
                                        image:
                                            AssetImage(newsList[index].image!),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10,
                                          right: 0,
                                          bottom: 10,
                                          top: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                newsList[index].text!,
                                                style: const TextStyle(
                                                  color: Color(0xffF00909),
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 10,
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 90,
                                              ),
                                              Text(
                                                newsList[index].date!,
                                                style: const TextStyle(
                                                  color: Color(0xff080808),
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 10,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            newsList[index].name!,
                                            style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 14,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Container(
                                            width: 220,
                                            // height: 70,
                                            child: Text(
                                              newsList[index].description!,
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 3,
                                              style: const TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w300,
                                                fontSize: 10,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                                Icons.arrow_forward_rounded)),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
