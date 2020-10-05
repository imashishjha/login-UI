
import'package:flutter/material.dart';
import'package:google_sign_in/google_sign_in.dart';


class buildSocialBtnRow extends StatefulWidget {
  @override
  _buildSocialBtnRowState createState() => _buildSocialBtnRowState();
}

class _buildSocialBtnRowState extends State<buildSocialBtnRow> {
  bool _isLoggedIn = false;

  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

  _login() async{
    try{
      await _googleSignIn.signIn();
      setState(() {
        _isLoggedIn = true;
      });
    } catch (err){
      print(err);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              _login();
            },
            child: CircleAvatar(
              radius: 28,
              backgroundImage: NetworkImage('https://images.theconversation.com/files/93616/original/image-20150902-6700-t2axrz.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1000&fit=clip'),
            )
          ),

          SizedBox(width: 20,),
          GestureDetector(
              onTap: () {
                _login();
              },
              child: CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage('https://3.bp.blogspot.com/-S8HTBQqmfcs/XN0ACIRD9PI/AAAAAAAAAlk/A_3ZXg7xO4YyGrKDhMpr6YRgrtOMn9tHwCLcBGAs/s1600/f_logo_RGB-Blue_1024.png'),
                ),
          )
        ],
      ),
    );
  }
}
