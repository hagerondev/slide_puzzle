import 'package:flutter/material.dart';
import 'package:very_good_slide_puzzle/momotaro/audio.dart';
import 'package:very_good_slide_puzzle/momotaro/puzzle1.dart';
import 'package:very_good_slide_puzzle/momotaro/puzzle2.dart';
import 'package:very_good_slide_puzzle/momotaro/puzzle3.dart';
import 'package:very_good_slide_puzzle/momotaro/slide1.dart';
import 'package:very_good_slide_puzzle/momotaro/slide2.dart';
import 'package:very_good_slide_puzzle/momotaro/slide3.dart';
import 'package:very_good_slide_puzzle/momotaro/slide4.dart';
import 'package:very_good_slide_puzzle/momotaro/slide5.dart';
import 'package:very_good_slide_puzzle/momotaro/slide6.dart';
import 'package:very_good_slide_puzzle/momotaro/slide7.dart';

class NextButton extends StatelessWidget {
  final bool button;
  final StatelessWidget nextWidget;
  final String audiofile;

  NextButton(
      {required this.button,
      required this.nextWidget,
      required this.audiofile});

  @override
  Widget build(BuildContext context) {
    if (button) {
      return Stack(
        children: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  //builder: (context) => const PuzzlePage(),
                  builder: (context) => nextWidget,
                ),
              );
            },
            child: SizedBox(
              width: 200,
              child: Image.asset('assets/images/momotaro/next.png'),
            ),
          ),
          MyHomePage(
            title: audiofile,
            callback: () {
              print('$audiofile end');
            },
          ),
        ],
      );
    } else {
      return SizedBox();
      // return MyHomePage(
      //   title: 'a3',
      //   callback: () {
      //     print('CALLBACK END');
      //   },
      // );
    }
  }
}

class StackButton extends StatelessWidget {
  final StatelessWidget cont;
  final bool button;
  final StatelessWidget nextWidget;
  final String audiofile;

  StackButton({
    Key? key,
    required this.cont,
    required this.button,
    required this.nextWidget,
    required this.audiofile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Padding(
          padding: EdgeInsets.all(40),
          child: SizedBox(
            height: double.infinity,
            child: cont,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: NextButton(
            button: button,
            nextWidget: nextWidget,
            audiofile: audiofile,
          ),
        ),
      ],
    );
  }
}

class Puzzles extends StatelessWidget {
  final int n;
  final bool button;

  Puzzles({Key? key, required this.n, required this.button}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (n == 1) {
      return StackButton(
        cont: Page1(),
        button: button,
        nextWidget: Slides(
          button: button,
          n: 2,
        ),
        audiofile: 'a2',
      );
    } else if (n == 2) {
      return StackButton(
        cont: Page2(),
        button: button,
        nextWidget: Slides(
          button: button,
          n: 4,
        ),
        audiofile: 'a5',
      );
    } else if (n == 3) {
      return StackButton(
        cont: Page3(),
        button: button,
        nextWidget: Slides(
          button: button,
          n: 6,
        ),
        audiofile: 'a8',
      );
    } else {
      return StackButton(
        cont: Page4(),
        button: false,
        nextWidget: Slide6(),
        audiofile: 'a10',
      );
    }
  }
}

class Slides extends StatelessWidget {
  final int n;
  final bool button;

  Slides({Key? key, required this.n, required this.button}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (n == 1) {
      return StackButton(
        cont: Slide1(),
        button: button,
        nextWidget: Puzzles(
          button: button,
          n: 1,
        ),
        audiofile: 'a1',
      );
    } else if (n == 2) {
      return StackButton(
        cont: Slide2(),
        button: button,
        nextWidget: Slides(
          button: button,
          n: 3,
        ),
        audiofile: 'a3',
      );
    } else if (n == 3) {
      return StackButton(
        cont: Slide3(),
        button: button,
        nextWidget: Puzzles(
          button: button,
          n: 2,
        ),
        audiofile: 'a4',
      );
    } else if (n == 4) {
      return StackButton(
        cont: Slide4(),
        button: button,
        nextWidget: Slides(
          button: button,
          n: 5,
        ),
        audiofile: 'a6',
      );
    } else if (n == 5) {
      return StackButton(
        cont: Slide5(),
        button: button,
        nextWidget: Puzzles(
          button: button,
          n: 3,
        ),
        audiofile: 'a7',
      );
    } else {
      return StackButton(
        cont: Slide6(),
        button: button,
        nextWidget: Puzzles(
          button: button,
          n: 4,
        ),
        audiofile: 'a9',
      );
    }
  }
}
