import 'package:flutter/material.dart';
import 'package:very_good_slide_puzzle/colors/colors.dart';
import 'package:very_good_slide_puzzle/dashatar/dashatar.dart';
import 'package:very_good_slide_puzzle/l10n/l10n.dart';

/// {@template blue_dashatar_theme}
/// The blue dashatar puzzle theme.
/// {@endtemplate}
class BlueDashatarTheme extends DashatarTheme {
  /// {@macro blue_dashatar_theme}
  const BlueDashatarTheme() : super();

  @override
  String semanticsLabel(BuildContext context) =>
      context.l10n.dashatarBlueDashLabelText;

  @override
  Color get backgroundColor => Color.fromARGB(255, 255, 255, 255);

  @override
  Color get defaultColor => Color.fromARGB(255, 255, 255, 255);

  @override
  Color get buttonColor => Color.fromARGB(255, 255, 255, 255);

  @override
  Color get menuInactiveColor => Color.fromARGB(255, 255, 255, 255);

  @override
  Color get countdownColor => Color.fromARGB(255, 255, 255, 255);

  @override
  String get themeAsset => 'assets/images/dashatar/gallery/blue.png';

  @override
  String get successThemeAsset => 'assets/images/dashatar/success/blue.png';

  @override
  String get audioControlOffAsset =>
      'assets/images/audio_control/blue_dashatar_off.png';

  @override
  String get audioAsset => 'assets/audio/dumbbell.mp3';

  @override
  String get dashAssetsDirectory => 'assets/images/dashatar/blue';
}
