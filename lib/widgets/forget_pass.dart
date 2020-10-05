
import 'package:flutter/material.dart';

class buildForgetPasswordButton extends StatefulWidget {
  @override
  _buildForgetPasswordButtonState createState() => _buildForgetPasswordButtonState();
}

class _buildForgetPasswordButtonState extends State<buildForgetPasswordButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        FlatButton(
          onPressed: () {},
          child: Text("Forgot Password ?",
          style: TextStyle(
            color: Colors.blueGrey,
          ),),
        ),
      ],
    );
  }
}
