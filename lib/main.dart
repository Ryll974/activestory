import 'package:flutter/material.dart';
import 'story.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: Story(),
      ),
    ),
  );
}

class Story extends StatefulWidget {
  const Story({Key? key}) : super(key: key);

  @override
  _Story createState() => _Story();
}

class _Story extends State<Story> {
  int storyNumber = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Image(
                  // l'image doit être de taille : 1280 x 540
                  image: AssetImage("images/image-$storyNumber.jpg"),
                ),
              ),
            )),
        Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  histoire[storyNumber].storyText,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontFamily: 'PatrickHand',
                    letterSpacing: 2.0,
                  ),
                ),
              ),
            )),
        Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () {
                    setState(() {});
                    print("test Choix 1");
                  },
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.blue, // Background Color
                  ),
                  child: Text(
                    histoire[storyNumber].choix1,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  )),
            )),
        Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () {
                    setState(() {});
                    print(
                      "test Choix 2",
                    );
                  },
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.blue, // Background Color
                  ),
                  child: Text(
                    histoire[storyNumber].choix2,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  )),
            )),
      ],
    );
  }
}
