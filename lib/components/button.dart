import 'dart:io';

import 'package:flutter/material.dart';

import '../utils/constants.dart';
import '../utils/hex_color.dart';

Widget renderButton() {
  final Constant constant = Constant();
  return Expanded(
      child: Padding(
    padding: EdgeInsets.only(bottom: Platform.isIOS ? 24 : 18),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
            height: 60,
            width: constant.screenWidth,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  colors: [HexColor('#8743FF'), HexColor('#4136F1')],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                )),
            child: Positioned(
              bottom: 0,
              child: Center(
                  child: Text(
                'Add to cart',
                style: TextStyle(
                    fontFamily: 'RalewayBold',
                    fontSize: 18,
                    color: HexColor('#ffffff')),
              )),
            ))
      ],
    ),
  ));
}
