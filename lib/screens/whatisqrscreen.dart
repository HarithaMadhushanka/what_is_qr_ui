import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:what_is_qr_ui/widgets/custom_raised_button.dart';

class WhatIsQrScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        padding: EdgeInsetsDirectional.zero,
        backgroundColor: Color(0xffB30060),
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Icon(
              CupertinoIcons.back,
              color: Color(0xffffffff),
            ),
            Text(
              'Back',
              style: TextStyle(
                color: Color(0xffffffff),
              ),
            ),
          ],
        ),
        middle: Text(
          'What is QR?',
          style: TextStyle(
            color: Color(0xffffffff),
            fontSize: 18,
          ),
        ),
      ),
      child: Stack(
        children: [
          Container(
            height: 460,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/background.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.fromLTRB(
                8, MediaQuery.of(context).size.height * 0.22, 8, 0),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 20, 20, 0),
                  child: Text(
                    'What is a QR?',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 20, 20, 0),
                  child: AutoSizeText(
                    'QR code (abbreviated from\nQuick Response code) is the\ntrademark for a type of\nmatrix barcode (or two-\ndimensional barcode) first\ndesigned in 1994 for the\nautomotive industry in Japan.\nA barcode is a machine-\nreadable optical label that\nContains information about',
                    style: TextStyle(fontSize: 26),
                    maxLines: 10,
                    minFontSize: 24,
                  ),
                ),
                Spacer(),
                CustomRaisedButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
