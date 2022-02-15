import 'package:flutter/material.dart';
import 'package:very_good_slide_puzzle/momotaro/page1.dart';
import 'package:very_good_slide_puzzle/momotaro/slide1.dart';
import 'package:very_good_slide_puzzle/momotaro/slide2.dart';

class Union1 extends StatelessWidget {
  const Union1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //return const PuzzleBoard();
    return Row(
      children: const [
        Expanded(
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Slide1(),
            ),
          ),
        ),
        Expanded(
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(60),
              child: Page1(),
            ),
          ),
        ),
        Expanded(
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Slide2(),
            ),
          ),
        ),
      ],
    );
  }
}
