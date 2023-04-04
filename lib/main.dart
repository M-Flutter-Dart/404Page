import 'package:flutter/material.dart';
import 'package:suzyscones/theme.dart';

import 'colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      theme: AppTheme.light(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
        backgroundColor: appPrimaryColor,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 1,
          backgroundColor: appPrimaryColor,
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu))],
          centerTitle: true,
          leading: SizedBox(
            width: 100,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 20, bottom: 10),
              child: Image.asset(
                "assets/images/suzyscones.png",
                scale: 1 / 9,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Image.asset('assets/images/404.png'),
                  SizedBox(
                    height: 400,
                    child: Stack(
                      children: [
                        Positioned(
                            left: size.width * 0.45,
                            right: 1,
                            top: 160,
                            child: Image.asset(
                              'assets/images/Group 11.png', fit: BoxFit.fill,)),
                        Padding(
                          padding:
                          const EdgeInsets.symmetric(
                              horizontal: 15.0, vertical: 5),
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'Opps! Looks like someone ',
                                    style: Theme
                                        .of(context)
                                        .textTheme
                                        .headlineMedium
                                        ?.copyWith(
                                        color: Color(0xFFE75E76),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24),
                                  ),
                                  Text(
                                    'took a bite of this page',
                                    style: Theme
                                        .of(context)
                                        .textTheme
                                        .headlineMedium
                                        ?.copyWith(
                                        color: Color(0xFFE75E76),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Sorry, the page you,re looking for',
                                    style: Theme
                                        .of(context)
                                        .textTheme
                                        .headlineMedium
                                        ?.copyWith(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 16),
                                  ),
                                  Text(
                                    " doesn\'t exist. If you think something is",
                                    style: Theme
                                        .of(context)
                                        .textTheme
                                        .headlineMedium
                                        ?.copyWith(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 16),
                                  ),
                                  Text(
                                    ' broken, report a problem',
                                    style: Theme
                                        .of(context)
                                        .textTheme
                                        .headlineMedium
                                        ?.copyWith(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Container(
                                    color: const Color(0xFFF6F6F6),
                                    height: 50,
                                    child: TextField(
                                      cursorColor: Color(0xFFE75E76),
                                      maxLines: null,
                                      decoration: InputDecoration(
                                          suffixIcon: Padding(
                                            padding: const EdgeInsets.only(
                                                right: 8.0),
                                            child: Padding(
                                              padding:
                                              const EdgeInsets.all(8.0),
                                              child: ElevatedButton(
                                                onPressed: () {},
                                                style: const ButtonStyle(
                                                    elevation:
                                                    MaterialStatePropertyAll(
                                                        0),
                                                    backgroundColor:
                                                    MaterialStatePropertyAll(
                                                        Color(0xFFE75E76))),
                                                child: Text("Search"),
                                              ),
                                            ),
                                          ),
                                          prefixIcon: Icon(
                                            Icons.search,
                                            color: Color(0xFFE75E76),
                                          ),
                                          hintText: 'What are You Looking for?',
                                          fillColor: Color(0xFFE75E76)
                                              .withOpacity(0.28),
                                          filled: true,
                                          border: InputBorder.none),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              SizedBox(
                                height: 40,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 25),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: double.maxFinite,
                                        child: ElevatedButton(
                                          onPressed: () {},
                                          style: ButtonStyle(
                                              shape: MaterialStatePropertyAll(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          10))),
                                              elevation:
                                              MaterialStatePropertyAll(0),
                                              backgroundColor:
                                              MaterialStatePropertyAll(
                                                  Color(0xFFE75E76))),
                                          child: const Text("Return Home"),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Or',
                                        style: Theme
                                            .of(context)
                                            .textTheme
                                            .headlineMedium
                                            ?.copyWith(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 16),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Report a Problem',
                                        style: Theme
                                            .of(context)
                                            .textTheme
                                            .headlineMedium
                                            ?.copyWith(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              // Column(
              //   children: [
              //     SizedBox(
              //       height: 10,
              //       child: Row(
              //         mainAxisAlignment: MainAxisAlignment.end,
              //         children: [
              //           Image.asset('assets/images/Group 11.png'),
              //         ],
              //       ),
              //     ),
              //   ],
              // ),
              // const SizedBox(
              //   height: 70,
              // ),
              Container(
                color: const Color(0xFF282828),
                //height: 262,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SizedBox(
                        child: Image.asset(
                          "assets/images/SuzyScones2.png",
                          scale: 1.5 / 1,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur',
                          style: Theme
                              .of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                              color: Colors.white),
                        ),
                        Text(
                          'adipiscing elit. Donec pretium egestas',
                          style: Theme
                              .of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                              color: Colors.white),
                        ),
                        Text(
                          'nunc.',
                          style: Theme
                              .of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                              color: Colors.white),
                        ),
                        SizedBox(
                          width: 180,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset(
                                  "assets/images/Instagram.png",
                                ),
                                Image.asset(
                                  "assets/images/Dribble.png",
                                ),
                                Image.asset(
                                  "assets/images/Twitter.png",
                                ),
                                Image.asset(
                                  "assets/images/Youtubelogo.png",
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0, bottom: 10),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Copyright © 2023 Suzyscones Website',
                              style: Theme
                                  .of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                  color: Colors.white60),
                            ),
                            Text(
                              'All right reserved',
                              style: Theme
                                  .of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                  color: Colors.white60),
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}