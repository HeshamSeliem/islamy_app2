import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Radio after change and test Tab on git hub" , style: GoogleFonts.elMessiri(
            fontSize: 24,
            color: Colors.blueGrey
          ),),
          Text("hello after changes changes changesssss change"),
          Text("hello after ensouring "),
        ],
      ),
    );
  }
}