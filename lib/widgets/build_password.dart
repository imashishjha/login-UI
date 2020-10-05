
import 'package:flutter/material.dart';

import '../constraints.dart';

class buildPasswordRow extends StatefulWidget {
  @override
  _buildPasswordRowState createState() => _buildPasswordRowState();
}

class _buildPasswordRowState extends State<buildPasswordRow> {
  @override
  Widget build(BuildContext context) {
    String email, password;
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        keyboardType: TextInputType.text,
        obscureText: true,
        onChanged: (value) {
          setState(() {
            password = value;
          });
        },
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.lock,
            color: Colors.blue,
          ),
          labelText: 'Password',
        ),
      ),
    );
  }
}
