import 'package:flutter/material.dart';
import 'package:very_good_slide_puzzle/theme/theme.dart';

/// {@template puzzle_page}
/// The root page of the puzzle UI.
///
/// Builds the puzzle based on the current [PuzzleTheme]
/// from [ThemeBloc].
/// {@endtemplate}

class Page4 extends StatelessWidget {
  /// {@macro puzzle_page}
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //return const PuzzleBoard();
    return Center(
      child: Image.asset('assets/images/momotaro/end.png'),
    );
  }
}
