import 'package:flutter/material.dart';

class UiClone extends StatefulWidget {
  const UiClone({super.key});

  @override
  State<UiClone> createState() => _UiCloneState();
}

class _UiCloneState extends State<UiClone> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                  child: Container(
                    height: h / 2,
                    // color: Colors.yellow,
                    child: Stack(
                      children: [
                        Positioned(
                          child: Container(
                            decoration: BoxDecoration(
                              //color: Colors.red,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  'data:image/jpeg;base64,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',
                                ),
                              ),
                            ),
                            height: h / 2 - 50,
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 24,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVpQYABrJmgYb-Vfssfgo4hhHK5_ASW9Km1w&s',
                            ),
                            radius: 50,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(10),
              //color: Colors.blue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Madrid City Tour for Designers',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'This is a random description  of the topic ',
                    style: TextStyle(fontSize: 15, color: Colors.grey.shade200),
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      rowIconText('20', Icons.favorite_rounded),
                      rowIconText('34', Icons.upload),
                      rowIconText('82', Icons.message),
                      rowIconText('295', Icons.face),
                    ],
                  ),
                ],
              ),
            ),
            Divider(),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney ",
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget rowIconText(String text, IconData icon) {
    return Row(
      children: [
        Text(text, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        SizedBox(width: 20),
        Icon(icon),
      ],
    );
  }
}
