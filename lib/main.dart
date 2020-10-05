import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_ui/widgets/build_logo.dart';
import 'package:flutter_login_ui/widgets/overall_login_container.dart';
import 'package:flutter_login_ui/widgets/signup_button.dart';
import './constraints.dart';
import 'package:google_sign_in/google_sign_in.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
  _logout(){
    _googleSignIn.signOut();
    setState(() {
      _isLoggedIn = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Color(0xfff2f3f7),
        body: Center(
          child: SingleChildScrollView(
            child: Stack(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height * 0.7,
                  width: MediaQuery.of(context).size.width,
                  child: Container(
                    decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: const Radius.circular(70),
                        bottomRight: const Radius.circular(70),
                      ),
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    buildLogo(),
                    _isLoggedIn
                        ? Column(

                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.network(_googleSignIn.currentUser.photoUrl, height: 50.0, width: 50.0,),
                        Text(_googleSignIn.currentUser.displayName),
                        OutlineButton( child: Text("Logout"), onPressed: (){
                          _logout();
                        },)
                      ],
                    ):Column(children: [
                      buildContainer(),
                      buildSignUpBtn(),
                    ],)

                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}