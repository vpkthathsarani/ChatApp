import 'package:flutter/material.dart';
import 'package:my/home_screen.dart';


class welcomeScreen extends StatelessWidget{
  const welcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "image/chat.png", 
            fit: BoxFit.cover,         
            ),
            SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => HomeScreen()
                
                ));
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 13, horizontal: 25),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.grey),

                ),
                child: Text("Let's Chat",
                style: TextStyle(
                  color: Colors.indigo,
                  fontSize: 18,
                  fontWeight: FontWeight.w500, 
                ),),
              ),
            )

      ],
      ),
    );
  }

}