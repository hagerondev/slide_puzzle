import 'package:flutter/material.dart';
import 'package:very_good_slide_puzzle/layout/breakpoints.dart';
import 'package:very_good_slide_puzzle/momotaro/audio.dart';
import 'package:very_good_slide_puzzle/momotaro/pages.dart';

class Union2 extends StatelessWidget {
  const Union2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //return const PuzzleBoard();
    if (MediaQuery.of(context).size.width <= PuzzleBreakpoints.medium) {
      //return Puzzles(n: 1);
      return Container(
        // decoration: BoxDecoration(
        //   border: Border.all(
        //     color: Colors.blue,
        //     width: 10,
        //   ),
        // ),
        child: Slides(
          n: 3,
          button: true,
          isUnion: false,
        ),
      );
    } else {
      return Stack(
        children: [
          Row(
            children: [
              Expanded(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Slides(
                      n: 3,
                      button: false,
                      isUnion: true,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: double.infinity,
                  child: Center(
                    child: Puzzles(
                      n: 2,
                      button: false,
                      isUnion: true,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Slides(
                      n: 4,
                      button: true,
                      isUnion: true,
                    ),
                  ),
                ),
              ),
            ],
          ),
          MyHomePage(
            callback: () {
              print('Union2 playing');
            },
            title: 'b2',
          ),
        ],
      );
    }
  }
}
