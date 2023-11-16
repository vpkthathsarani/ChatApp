import 'package:flutter/material.dart';

class ChatMessageItem extends StatelessWidget{
  final bool isMechatting;
  final String messageBody;

  const ChatMessageItem({super.key, required this.isMechatting,required this.messageBody});



  @override
  Widget build(BuildContext context){
    return Align(
      alignment: isMechatting ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.65,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: isMechatting ? BorderRadius.only(
            topLeft: Radius.circular(12),
            bottomLeft: Radius.circular(12),
            bottomRight: Radius.circular(12),
          )
          :BorderRadius.only(
            topRight: Radius.circular(12),
            bottomLeft: Radius.circular(12),
            bottomRight: Radius.circular(12),

          ),
          color: isMechatting ? Colors.blue[900] : Colors.white,



        ),
        margin: EdgeInsets.all(10),
        child: Text(messageBody,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          color: isMechatting ? Colors.white : Colors.blue[900],
        ),
        textAlign: TextAlign.start,
        ),
        ),
      );
    
  }
}