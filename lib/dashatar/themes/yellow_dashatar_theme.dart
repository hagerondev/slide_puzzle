import 'package:flutter/material.dart';
import 'package:very_good_slide_puzzle/colors/colors.dart';
import 'package:very_good_slide_puzzle/dashatar/dashatar.dart';
import 'package:very_good_slide_puzzle/l10n/l10n.dart';

/// {@template yellow_dashatar_theme}
/// The yellow dashatar puzzle theme.
/// {@endtemplate}
class YellowDashatarTheme extends DashatarTheme {
  /// {@macro yellow_dashatar_theme}
  const YellowDashatarTheme() : super();

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
  String get themeAsset => 'assets/images/dashatar/gallery/yellow.png';

  @override
  String get successThemeAsset => 'assets/images/dashatar/success/blue.png';

  @override
  String get audioControlOffAsset =>
      'assets/images/audio_control/yellow_dashatar_off.png';

  @override
  String get audioAsset => 'assets/audio/dumbbell.mp3';

  @override
  String get dashAssetsDirectory => 'assets/images/dashatar/yellow';
}
