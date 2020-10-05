
import 'package:flutter/material.dart';
class buildOrRow extends StatefulWidget {
  @override
  _buildOrRowState createState() => _buildOrRowState();
}

class _buildOrRowState extends State<buildOrRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(bottom: 20),
          child: Text(
            '- OR -',
            style: TextStyle(
              fontWeight: FontWeight.w400,
            ),
          ),
        )
      ],
    );
  }
}
