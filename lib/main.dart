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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),

                child: Column(
                  children: [
                    Image.asset('assets/images/404.png'),
                    Column(
                      children: [
                        Text(
                          'Opps! Looks like someone ',
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium
                              ?.copyWith(
                              color: Color(0xFFE75E76),
                              fontWeight: FontWeight.bold,
                              fontSize: 24),
                        ),
                        Text(
                          'took a bite of this page',
                          style: Theme.of(context)
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
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium
                              ?.copyWith(
                              fontWeight: FontWeight.normal, fontSize: 16),
                        ),
                        Text(
                          " doesn\'t exist. If you think something is",
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium
                              ?.copyWith(
                              fontWeight: FontWeight.normal, fontSize: 16),
                        ),
                        Text(
                          ' broken, report a problem',
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium
                              ?.copyWith(
                              fontWeight: FontWeight.normal, fontSize: 16),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        color: const Color(0xFFF6F6F6),
                        height: 50,
                        child: TextField(
                          maxLines: null,
                          decoration: InputDecoration(
                              suffix: ElevatedButton(
                                onPressed: () {},
                                style: const ButtonStyle(
                                    elevation: MaterialStatePropertyAll(0),
                                    backgroundColor: MaterialStatePropertyAll(
                                        Color(0xFFE75E76))),
                                child: Text("Search"),
                              ),
                              hintText: 'What are You Looking for?',
                              fillColor: Color(0xFFE75E76).withOpacity(0.28),
                              filled: true,
                              border: InputBorder.none),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: double.maxFinite,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10))),
                                  elevation: MaterialStatePropertyAll(0),
                                  backgroundColor:
                                  MaterialStatePropertyAll(Color(0xFFE75E76))),
                              child: const Text("Return Home"),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Or',
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium
                                ?.copyWith(
                                fontWeight: FontWeight.normal, fontSize: 16),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Report a Problem',
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium
                                ?.copyWith(
                                fontWeight: FontWeight.normal, fontSize: 16),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
              const SizedBox(height: 70,),
              Container(
                color: const Color(0xFF282828),
                height: 292,
                width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(
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
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
