import 'package:flutter/material.dart';
import 'package:simpson/messages.dart';

class Bart extends StatelessWidget{

  final String? message;
  final Function onTap;

  const Bart({super.key, required this.message, required this.onTap});

  Widget displayBartPicture(){
    return const Image(image: AssetImage("images/Bart.png"),
      width: 200,
      height: 200,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      const Image(image: AssetImage("images/Bart.png"),
      width: 200,
      height: 200,
      ),
      message != null ? Messages(msg : message!) : Container(),
      TextButton(
            child: const Text('Repondre'),
            onPressed: () => onTap('Salut Homer!')
        ),
      ]
    );
  }
}