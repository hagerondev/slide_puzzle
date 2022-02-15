import 'package:flutter/material.dart';
import 'package:very_good_slide_puzzle/momotaro/page2.dart';
import 'package:very_good_slide_puzzle/momotaro/slide3.dart';
import 'package:very_good_slide_puzzle/momotaro/slide4.dart';

class Union2 extends StatelessWidget {
  const Union2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //return const PuzzleBoard();
    return Row(
      children: const [
        Expanded(
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Slide3(),
            ),
          ),
        ),
        Expanded(
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(60),
              child: Page2(),
            ),
          ),
        ),
        Expanded(
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Slide4(),
            ),
          ),
        ),
      ],
    );
  }
}
