import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,

      body: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: 80,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            MyTabBar(
              title: 'Follow',
              icon: Icon(Icons.notifications),
            ),
            MyTabBar(
              title: 'Message',
              icon: Icon(Icons.message),
            ),
            MyTabBar(
              title: 'Favorite',
              icon: Icon(Icons.favorite),
            ),
          ],
        ),
      ),

      // body: Container(
      //     width: 400,
      //     height: 50,
      //     decoration: BoxDecoration(
      //         color: Colors.white, borderRadius: BorderRadius.circular(20)),
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceAround,
      //       children: [
      //         Column(
      //           children: [
      //             Container(
      //               width: 30,
      //               height: 30,
      //               decoration: BoxDecoration(
      //                   color: Colors.amber.shade200,
      //                   borderRadius: BorderRadius.circular(50)),
      //               child: Icon(Icons.notifications),
      //             ),
      //             Text('Follow')
      //           ],
      //         ),
      //         Column(
      //           children: [
      //             Container(
      //               width: 30,
      //               height: 30,
      //               decoration: BoxDecoration(
      //                   color: Colors.amber.shade200,
      //                   borderRadius: BorderRadius.circular(50)),
      //               child: Icon(Icons.message),
      //             ),
      //             Text('Message')
      //           ],
      //         ),
      //         Column(
      //           children: [
      //             Container(
      //               width: 30,
      //               height: 30,
      //               decoration: BoxDecoration(
      //                   color: Colors.amber.shade200,
      //                   borderRadius: BorderRadius.circular(50)),
      //               child: Icon(Icons.favorite),
      //             ),
      //             Text('Favorite')
      //           ],
      //         )
      //       ],
      //     )),
    );
  }
}

class MyTabBar extends StatelessWidget {
  final String title;
  final Widget icon;
  const MyTabBar({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStatePropertyAll(Colors.amber.shade200)),
            hoverColor: Colors.orange,
            padding: EdgeInsets.all(10),
            onPressed: () {},
            icon: icon),
        Text(title),
      ],
    );
  }
}
