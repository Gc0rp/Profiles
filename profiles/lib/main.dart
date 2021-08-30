import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget userStats(String caption, String number) {
      return Column(
        children: [Text(caption, style: GoogleFonts.roboto()), Text(number)],
      );
    }

    Widget userStatsBox() {
      return Row(
        children: [
          userStats('Followers', '5.7M'),
          Container(
            width: 1,
            height: 20,
            color: Colors.grey,
            padding: EdgeInsets.all(100),
          ),
          userStats('Following', '924'),
        ],
      );
    }

    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: Column(
          children: [userStatsBox()],
        ),
      ),
      // )
    );
  }
}
