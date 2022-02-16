import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:very_good_slide_puzzle/momotaro/union1.dart';
import 'package:very_good_slide_puzzle/puzzle/puzzle.dart';

// class Button extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return TextButton(
//       //onPressed: null,

//       style: TextButton.styleFrom(
//         side: const BorderSide(
//           color: Colors.red, //色
//           width: 5, //太さ
//         ),
//       ),
//       //onPressed: _handlePressed,
//       onPressed: () {
//         Navigator.push(
//           context,
//           MaterialPageRoute<void>(
//             //builder: (context) => const PuzzlePage(),
//             //builder: (context) => const Page1(),
//             builder: (context) => const Union1(),
//           ),
//         );
//       },
//       //child: const Text('START PUZZLE!'),
//       child: const Text(''),
//     );
//   }
// }

class AppIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final icon_size = 400.sp + 40;
    return Padding(
      padding: EdgeInsets.all(50.sp),
      child: TextButton(
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
          width: icon_size,
          height: icon_size,
          decoration: BoxDecoration(
            color: Colors.lime,
            border: Border.all(color: Colors.lime),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: EdgeInsets.all(10.sp),
            child: Center(
              child: Image.asset(
                'assets/images/momotaro/momo.png',
                fit: BoxFit.contain,
                //'assets/images/timer_icon.png',
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppIcon(),
        Text(
          'momotaro',
          style: TextStyle(fontSize: 90.sp + 10),
        ),
      ],
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
          child: ScreenUtilInit(
            designSize: Size(1920, 1080),
            builder: () => Column(
              // decoration: const BoxDecoration(
              //   image: DecorationImage(
              //     image: AssetImage('assets/images/menu_back.jpg'),
              //     fit: BoxFit.cover,
              //   ),
              // ),
              children: [
                Container(
                  // decoration: BoxDecoration(
                  //   border: Border.all(color: Colors.red),
                  // ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 90.sp),
                    child: Text(
                      "Let's start momotaro",
                      style: TextStyle(fontSize: 100.sp + 10),
                    ),
                  ),
                ),
                App(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
