
import 'package:flutter/material.dart';

class buildLogo extends StatefulWidget {
  @override
  _buildLogoState createState() => _buildLogoState();
}

class _buildLogoState extends State<buildLogo> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(40,40,40,15),
              child: Image(
                width: 100,
                height: 100,
                image: NetworkImage('https://www.pngkey.com/png/detail/337-3372981_blue-atom-transparent-background-uc-leads.png'),
              ),
            ),

            Padding(
              padding:  EdgeInsets.fromLTRB(70,0,70,20),
              child: Text(
                'NSUT PORTAL',
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height / 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
