
import 'package:flutter/material.dart';
import 'package:my/chat_message_item.dart';

class ChatScreen extends StatelessWidget{
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(8),
              height: 85,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  BackButton(),
                  SizedBox(width: 5,),
                  CircleAvatar(
                    backgroundImage: AssetImage("image/pic4.jpg"),
                    maxRadius: 28,
                  
                  ),
                  SizedBox(width: 20,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "kaveesha",
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                        SizedBox(height: 8,),

                        Text(
                        "Active 5 hours ago",
                        style: TextStyle(
                          
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade500,
                        ),
                        ),
                    ],
                  ),
                  Spacer(),
                  IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
                ],
              ),
            ),
            Expanded(child: Container(
              color: const Color.fromARGB(255, 135, 160, 182),
              child :ListView(
                padding: EdgeInsets.all(15),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Today",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),

                    ),
                  ),
                  SizedBox(height: 20,),
                  ChatMessageItem(
                   isMechatting: true,
                   messageBody: "Hi, kavee, how are you?"),

                  ChatMessageItem(
                    isMechatting: false,
                    messageBody: "I am fine"),
                  
                  ChatMessageItem(
                   isMechatting: false,
                   messageBody: "Congratulations for 10k subcribers on Dear programmer Channel",),

                  ChatMessageItem(
                   isMechatting: true,
                   messageBody: "oh thank you very much. I am working hard on it, so i can make it to 20k subscribers in days. This is my goal now"),

                  ChatMessageItem(
                   isMechatting: false,
                   messageBody: "Great, It will be very soon."),

                  ChatMessageItem(
                   isMechatting: true,
                   messageBody: "Thanks"),

                  ChatMessageItem(
                   isMechatting: true,
                   messageBody: "Hi, kavee, how are you?"),

                  ChatMessageItem(
                    isMechatting: false,
                    messageBody: "I am fine"),
                  
                  ChatMessageItem(
                   isMechatting: false,
                   messageBody: "Congratulations for 10k subcribers on Dear programmer Channel",),

                  ChatMessageItem(
                   isMechatting: true,
                   messageBody: "oh thank you very much. I am working hard on it, so i can make it to 20k subscribers in days. This is my goal now"),

                  ChatMessageItem(
                   isMechatting: false,
                   messageBody: "Great, It will be very soon."),

                  ChatMessageItem(
                   isMechatting: true,
                   messageBody: "Thanks"),


                ],
              ),
            ))
          ],
        )
        ),
        bottomNavigationBar : Container(
          height: 70,
          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),

          ),
          child: Container(
            child: Row(children: [
              Expanded(child: TextField(
                decoration: InputDecoration( 
                  border: InputBorder.none,
                  hintText: "type something...",
                  hintStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  )
                ),
                maxLines: 10,
                minLines: 1,
              )),
              SizedBox(width: 20,),
              InkWell(
                onTap: () {},
                hoverColor: Colors.white,
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blue[900],
                    borderRadius: BorderRadius.circular(13),
                  ),
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.send_rounded,
                    color: Colors.white,
                    size :25,
                    
                    ),
                  
                ),
              )
            ]),
          ),
          )
    );
    
  }
}

