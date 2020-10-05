
import 'package:flutter/material.dart';

import '../constraints.dart';

class buildEmailRow extends StatefulWidget {
  @override
  _buildEmailRowState createState() => _buildEmailRowState();
}

class _buildEmailRowState extends State<buildEmailRow> {
  @override
  Widget build(BuildContext context) {
    String email, password;
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        onChanged: (value) {
          setState(() {
            email = value;
          });
        },
        decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.email,
              color: Colors.blue,
            ),
            labelText: 'E-mail'),
      ),
    );
  }
}
