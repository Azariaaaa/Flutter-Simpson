// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Messages extends StatelessWidget{
  
 const Messages({super.key, required  this.msg});

  final String msg;


  @override
  Widget build(BuildContext context) {
    return returnGivenMessage();
  }

  Widget returnGivenMessage(){
    return Text(msg,
      style: GoogleFonts.kalam(
        fontSize: 22
      )
    );
  }
}