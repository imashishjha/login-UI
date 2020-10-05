import 'package:flutter/material.dart';
import 'package:flutter_login_ui/widgets/build_OR_row.dart';
import 'package:flutter_login_ui/widgets/build_email.dart';
import 'package:flutter_login_ui/widgets/build_password.dart';
import 'package:flutter_login_ui/widgets/forget_pass.dart';
import 'package:flutter_login_ui/widgets/login_button.dart';
import 'package:flutter_login_ui/widgets/social_button.dart';

class buildContainer extends StatefulWidget {
  @override
  _buildContainerState createState() => _buildContainerState();
}

class _buildContainerState extends State<buildContainer> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.7,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Login",
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height / 30,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
                buildEmailRow(),
                buildPasswordRow(),
                buildForgetPasswordButton(),
                buildLoginButton(),
                buildOrRow(),
                buildSocialBtnRow(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
