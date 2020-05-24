import 'dart:ui';
import 'package:flutter/material.dart';

class AboutDev extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
      child: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Expanded(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Developed By:',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Laxminarayan Sharma',
                      style: TextStyle(
                        color: Colors.white60,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'lysharma11@gmail.com',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ]),
            ),
            Container(
              child: Text(
                '© ALL RIGHTS RESERVED\n*Contact me on above mail if you wanna develop any application or if you have any query',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.cyanAccent,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
