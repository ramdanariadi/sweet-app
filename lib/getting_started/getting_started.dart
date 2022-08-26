// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:food_app/home/home.dart';
import 'package:food_app/utils/consts.dart';

class GettingStarted extends StatelessWidget {
  const GettingStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData md = MediaQuery.of(context);
    return Scaffold(
      body: Center(
          child: Container(
        width: md.size.width,
        height: md.size.height,
        color: primaryColor,
        child: Column(
          children: [
            Padding(
              padding:
                  EdgeInsets.only(top: md.size.height * 0.1, left: md.size.width * 0.06),
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Image.asset(
                    'images/sweet-minion.png',
                    width: md.size.width * 0.59,
                  ),
                  Image.asset('images/elipses.png', width: md.size.width * 0.7)
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 50),
              child: Text(
                'Sweets Ordering App',
                style: TextStyle(
                    color: Colors.white, fontSize: 33, fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 17),
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                    style: TextStyle(fontWeight: FontWeight.normal),
                    children: [
                      TextSpan(text: 'Order your favorite desert \n'),
                      TextSpan(text: 'Here!')
                    ]),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 125),
              width: md.size.width * 0.8,
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      offset: Offset(0, 10),
                      spreadRadius: 2,
                      blurRadius: 15)
                ],
              ),
              child: Material(
                color: const Color.fromRGBO(255, 180, 149, 0.93),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: InkWell(
                  borderRadius: const BorderRadius.all(Radius.circular(30)),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Home(),
                        ));
                  },
                  child: const Center(
                      child: Padding(
                    padding: EdgeInsets.only(top: 18, bottom: 18),
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                          fontSize: 18, color: Color.fromRGBO(255, 249, 243, 1)),
                    ),
                  )),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
