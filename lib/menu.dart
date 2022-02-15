import 'package:flutter/material.dart';
import 'package:very_good_slide_puzzle/momotaro/page1.dart';
import 'package:very_good_slide_puzzle/momotaro/page2.dart';
import 'package:very_good_slide_puzzle/momotaro/union.dart';
import 'package:very_good_slide_puzzle/puzzle/puzzle.dart';

class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      //onPressed: null,

      style: TextButton.styleFrom(
        side: const BorderSide(
          color: Colors.red, //色
          width: 5, //太さ
        ),
      ),
      //onPressed: _handlePressed,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute<void>(
            //builder: (context) => const PuzzlePage(),
            //builder: (context) => const Page1(),
            builder: (context) => const Union1(),
          ),
        );
      },
      //child: const Text('START PUZZLE!'),
      child: const Text(''),
    );
  }
}

class AppIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute<void>(
            //builder: (context) => const PuzzlePage(),
            builder: (context) => const Union1(),
          ),
        );
      },
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.lime,
          border: Border.all(color: Colors.lime),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Center(
            child: Image.asset(
              'images/momotaro/momo.png',
              //'assets/images/timer_icon.png',
            ),
          ),
        ),
      ),
    );
  }
}

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _ChangeMenuState createState() => _ChangeMenuState();
}

class _ChangeMenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: const Text('Creative Folktales')),
      body: Center(
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: Column(
            // decoration: const BoxDecoration(
            //   image: DecorationImage(
            //     image: AssetImage('assets/images/menu_back.jpg'),
            //     fit: BoxFit.cover,
            //   ),
            // ),
            children: [
              const Padding(
                padding: EdgeInsets.all(30),
                child: Text(
                  "Let's start momotaro",
                  style: TextStyle(fontSize: 80),
                ),
              ),

              Column(
                children: [
                  AppIcon(),
                  const Text(
                    'momotaro',
                    style: TextStyle(fontSize: 40),
                  ),
                ],
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: [
              //     const Expanded(
              //       child: SizedBox(),
              //     ),
              //     Expanded(
              //       child: SizedBox(
              //         height: 300,
              //         width: 80,
              //         child: Padding(
              //           padding: const EdgeInsets.only(
              //             left: 100,
              //             right: 190,
              //             bottom: 80,
              //           ),
              //           child: Button(), // 指定されても、Expanded に包まれると無視される
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
