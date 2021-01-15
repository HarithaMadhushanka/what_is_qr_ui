import 'package:flutter/material.dart';

class CustomRaisedButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.06,
      margin: EdgeInsets.fromLTRB(20, 0, 20, 50),
      child: RaisedButton(
        elevation: 0,
        color: Color(0xffB30060),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        disabledColor: Color(0xffB30060),
        textColor: Colors.white,
        child: Text(
          'Ok',
          style: TextStyle(
            fontSize: 16.0,
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}
