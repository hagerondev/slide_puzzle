import 'package:flutter/material.dart';
import 'package:very_good_slide_puzzle/momotaro/page3.dart';
import 'package:very_good_slide_puzzle/momotaro/slide5.dart';
import 'package:very_good_slide_puzzle/momotaro/slide6.dart';

class Union3 extends StatelessWidget {
  const Union3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //return const PuzzleBoard();
    return Row(
      children: const [
        Expanded(
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Slide5(),
            ),
          ),
        ),
        Expanded(
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(60),
              child: Page3(),
            ),
          ),
        ),
        Expanded(
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Slide6(),
            ),
          ),
        ),
      ],
    );
  }
}
