import 'package:flutter/material.dart';
import 'package:very_good_slide_puzzle/app/app.dart';

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
            builder: (context) => const App(),
          ),
        );
      },
      //child: const Text('START PUZZLE!'),
      child: const Text(''),
    );
  }
}

class Menu extends StatefulWidget {
  @override
  _ChangeMenuState createState() => _ChangeMenuState();
}

class _ChangeMenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        //appBar: AppBar(title: const Text('Creative Folktales')),
        body: AspectRatio(
          aspectRatio: 16 / 9,
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/menu_back.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Container(),
                ),
                Expanded(
                  child: Container(
                    height: 300,
                    width: 80,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 100,
                        right: 190,
                        bottom: 80,
                      ),
                      child: Button(), // 指定されても、Expanded に包まれると無視される
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
