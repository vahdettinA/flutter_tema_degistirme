import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class btn extends StatefulWidget {
  _btnState createState() => _btnState();
}

class _btnState extends State<btn> {
  bool valu = false;
  Color text = Colors.black;
  Color backcard = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: valu == false ? Color(0xffE5E5E5) : Colors.black,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: valu == false ? Color(0xffE5E5E5) : Colors.black,
          actions: [
            LiteRollingSwitch(
              textSize: 16,
              value: valu,
              animationDuration: Duration(seconds: 1),
              textOn: 'Koyu',
              textOff: 'Açık',
              colorOn: Colors.black,
              colorOff: Colors.grey,
              textOnColor: Colors.white,
              textOffColor: Colors.black,
              iconOn: FontAwesomeIcons.moon,
              iconOff: FontAwesomeIcons.sun,
              onTap: () {
                setState(() {
                  valu = !valu;
                });
                if (valu == false) {
                  setState(() {
                    text = Colors.black;
                    backcard = Colors.black;
                  });
                } else {
                  setState(() {
                    text = Colors.white;
                    backcard:
                    Color(0xff676467);
                  });
                }
              },
              onChanged: (bool) {},
              onDoubleTap: () {},
              onSwipe: () {},
            ),
          ]),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
            child: Text("My Dashboard",
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontSize: 24,
                    fontFamily: 'sansserif',
                    fontWeight: FontWeight.bold,
                    color: text)),
          ),
          Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    child: Image(
                      image: AssetImage("assets/1.png"),
                      height: 24,
                      width: 24,
                    ),
                    height: 155,
                    width: 165,
                    decoration: BoxDecoration(
                        color: backcard,
                        borderRadius: BorderRadius.circular(20))),
                SizedBox(height: 5),
                Container(
                    child: Image(
                      image: AssetImage("assets/robot.png"),
                      height: 24,
                      width: 24,
                    ),
                    height: 155,
                    width: 165,
                    decoration: BoxDecoration(
                        color: backcard,
                        borderRadius: BorderRadius.circular(20)))
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    child: Image(
                      image: AssetImage("assets/rocket.png"),
                      height: 24,
                      width: 24,
                    ),
                    height: 155,
                    width: 165,
                    decoration: BoxDecoration(
                        color: backcard,
                        borderRadius: BorderRadius.circular(20))),
                SizedBox(height: 5),
                Container(
                    child: Image(
                      image: AssetImage("assets/night.png"),
                      height: 24,
                      width: 24,
                    ),
                    height: 155,
                    width: 165,
                    decoration: BoxDecoration(
                        color: backcard,
                        borderRadius: BorderRadius.circular(20)))
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    child: Image(
                      image: AssetImage("assets/up.png"),
                      height: 24,
                      width: 24,
                    ),
                    height: 155,
                    width: 165,
                    decoration: BoxDecoration(
                        color: backcard,
                        borderRadius: BorderRadius.circular(20))),
                SizedBox(height: 5),
                Container(
                    child: Image(
                      image: AssetImage("assets/game.png"),
                      height: 24,
                      width: 24,
                    ),
                    height: 155,
                    width: 165,
                    decoration: BoxDecoration(
                        color: backcard,
                        borderRadius: BorderRadius.circular(20)))
              ],
            )
          ])
        ],
      ),
    );
  }
}
