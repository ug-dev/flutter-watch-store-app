import 'dart:io';

import 'package:flutter/material.dart';
import 'package:watch_store_app/components/button.dart';
import 'package:watch_store_app/components/svg_renderer.dart';
import 'package:watch_store_app/utils/hex_color.dart';

import '../components/chip_list.dart';
import '../utils/constants.dart';

class Home extends StatelessWidget {
  Home({super.key});
  final Constant constant = Constant();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      theme: ThemeData(fontFamily: 'Raleway'),
      home: Scaffold(
          backgroundColor: HexColor('#FCFCFF'),
          body: Padding(
            padding: EdgeInsets.only(top: statusBarPadding(constant)),
            child: Column(
              children: [
                renderTopBar(),
                renderHeroBanner(),
                Expanded(
                    child: Container(
                  decoration: BoxDecoration(
                      color: HexColor('#ffffff'),
                      borderRadius: BorderRadius.circular(22),
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(3, 3),
                          spreadRadius: -3,
                          blurRadius: 5,
                          color: Color.fromRGBO(0, 0, 0, 1),
                        )
                      ]),
                  width: constant.screenWidth,
                  child: Padding(
                      padding:
                          const EdgeInsets.only(left: 18, right: 18, top: 20),
                      child: Column(
                        children: [
                          renderTitle(),
                          renderColors(),
                          renderDetails(),
                          renderButton()
                        ],
                      )),
                ))
              ],
            ),
          )),
    );
  }
}

statusBarPadding(Constant constant) {
  return Platform.isIOS
      ? 44.0
      : Platform.isAndroid
          ? constant.statusBarHeight / 2
          : 0;
}

Widget renderLine() {
  return Container(
    height: 1.5,
    width: 30,
    color: HexColor('#5B41FF'),
  );
}

Widget renderTopBar() {
  return Padding(
    padding: const EdgeInsets.only(left: 18, right: 18),
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      renderSvg('./assets/arrow.svg'),
      renderSvg('./assets/like.svg')
    ]),
  );
}

Widget renderHeroBanner() {
  return Padding(
    padding: const EdgeInsets.only(bottom: 18),
    child: Image.asset('./assets/hero-banner.png'),
  );
}

Widget renderTitle() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Apple Watch Series 7',
            style: TextStyle(fontFamily: 'RalewayBold', fontSize: 22),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(
              '( With solo loop )',
              style: TextStyle(fontSize: 14, color: HexColor('#9095A6')),
            ),
          )
        ],
      ),
      Text(
        '₹799',
        style: TextStyle(
            fontFamily: 'RalewaySemiBold',
            fontSize: 24,
            color: HexColor('#5B41FF')),
      ),
    ],
  );
}

Widget renderColors() {
  return Padding(
    padding: const EdgeInsets.only(top: 24),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Colors',
          style: TextStyle(
              fontFamily: 'RalewaySemiBold',
              fontSize: 18,
              color: HexColor('#1B153D')),
        ),
        chipList(),
      ],
    ),
  );
}

Widget renderDetails() {
  return Column(
    children: [
      Padding(
          padding: const EdgeInsets.only(top: 24),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Details',
                    style: TextStyle(
                        fontFamily: 'RalewaySemiBold',
                        fontSize: 18,
                        color: HexColor('#5B41FF')),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: renderLine(),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Review',
                  style: TextStyle(
                      fontFamily: 'RalewaySemiBold',
                      fontSize: 18,
                      color: HexColor('#B7BAC5')),
                ),
              )
            ],
          )),
      Padding(
        padding: const EdgeInsets.only(top: 14),
        child: Text(
          'The aluminium case is lightweight and made from 100 percent recycled aerospace grade alloy.',
          textAlign: TextAlign.justify,
          style: TextStyle(
              fontFamily: 'Raleway', fontSize: 16, color: HexColor('#9095A6')),
        ),
      )
    ],
  );
}
