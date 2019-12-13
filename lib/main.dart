import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFF0B6A8A),
        accentColor: Color(0xFFFFB800),
        scaffoldBackgroundColor: Color(0xFFEDEDED),
        textTheme: GoogleFonts.robotoTextTheme(
          Theme.of(context).textTheme.copyWith(
                subtitle: GoogleFonts.roboto(
                  textStyle: Theme.of(context).textTheme.subtitle.copyWith(
                        fontWeight: FontWeight.w300,
                      ),
                ),
              ),
        ),
      ),
      home: HomePage(),
    );
  }
}
