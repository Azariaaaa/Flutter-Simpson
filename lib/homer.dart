import 'package:flutter/material.dart';
import 'package:simpson/bart.dart';
import 'package:simpson/messages.dart';

class Homer extends StatefulWidget{
  const Homer({super.key});
  
  @override
  State<Homer> createState() => _HomerState();
  
}

class _HomerState extends State<Homer>{

  
  void bartResponse(String value){
    setState(() {
      responseFromBart = value;
    });;
  }

  String? messageToGiveToBart;
  String? responseFromBart;
  TextEditingController messageFromHomer = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Center(
      child : Container(
        color: Colors.blue,
        child : Column(
        children: [
          displayHomerPicture(),
          userInput(),
          TextButton(
            child: const Text('Parler à Bart'),
            onPressed: () => setState(() {
              messageToGiveToBart = 'Homer dit à Bart : ${messageFromHomer.text}';
            }),
          ),
          Bart(message: messageToGiveToBart, onTap : bartResponse),
          responseFromBart != null ? Messages(msg : 'Bart dit à Homer : $responseFromBart') : Container(),
      ],)
      )
    );
  }

  Image displayHomerPicture(){
    return const Image(
      image: AssetImage("images/Homer.png"),
      width: 200,
      height: 200,
      );
  }

  TextFormField userInput(){
    return TextFormField(
      controller : messageFromHomer,
      decoration:   InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        hintText: 'Tapez ici',
        
      ),
    );
  }
  
}