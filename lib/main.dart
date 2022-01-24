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
  bool ShowButton = true;

  void ShowOrHide() {
    if (histoire[storyNumber].choix1 == "") {
      ShowButton = false;
    } else {ShowButton = true;}
  }

  @override
  Widget build(BuildContext context) {
    ShowOrHide();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.blue,
                      width: 8,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Image(
                    // l'image doit être de taille : 1280 x 540
                    image: AssetImage(histoire[storyNumber].storyImage),
                  ),
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
              child: Visibility(
                visible: ShowButton,
                child: TextButton(
                    onPressed: () {
                      setState(() {});
                      storyNumber = histoire[storyNumber].choix1pointer;
                    },
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12), // <-- Radius
                      ),
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
              ),
            )),
        Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () {
                    setState(() {});
                    storyNumber = histoire[storyNumber].choix2pointer;
                  },
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12), // <-- Radius
                    ),
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
