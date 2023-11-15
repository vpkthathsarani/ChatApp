import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
   List image = [
    "image/pic1.jpeg",
    "image/pic2.jpeg",
    "image/pic3.jpeg",
    "image/pic4.jpg",
    "image/pic5.jpg",
    "image/pic6.jpg",

  ];

  List names = [
    "karu",
    "Oshal",
    "krishan",
    "kaveesha",
    "Malani",
    "Thathsarani",


  ];

  List msgTiming =[
    "Mon",
    "12:30",
    "sun",
    "22:20",
    "05:23",
    "wed",
    "janu",


  ];

  List msgs = [
    "Hi, how are you?",
    "where are you?",
    "Hello dear, is all right?",
    "It is nice to meet you",
    "I want to meet you",
    "Bye",
  ];


  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: EdgeInsets.only(top: 15,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 15, left: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Messages",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      color: Colors.black87,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search, size: 35),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 15),
          
            child:Text(
              "Recent",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.black54,
                fontSize: 18,
                letterSpacing: 1,
              ),
            ),
            ),
            SizedBox(height: 20),
             Padding(
              padding: const EdgeInsets.only(left: 15),
            child:SizedBox(
              height: 100,
              child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: image.length,              
              itemBuilder: (context , index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 25),
              
                child: Column(
                  
                  children: [
                    CircleAvatar(
                      backgroundImage : AssetImage(
                        image[index],),
                      minRadius: 33,
                    ),
                    SizedBox(height: 8,),
                    Text(
                      names[index],
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black54,
                        fontSize: 17,
                        letterSpacing: 1,
              ),
            ),
                  ],
                ),
                );
              },
            ),
            ),
             ),
            SizedBox(height: 10,),
            Divider(),
            SizedBox(height: 20,),

            ListView.builder(
              itemCount: image.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context,index){
              return ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                  child: Image.asset(
                    image[index],
                    height: 50,
                    width: 50,
                    fit: BoxFit.cover,
                  ),
                ),
                title: Text(
                  names[index],
                  style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black54,
                        fontSize: 17,
                        letterSpacing: 1,
              ),
              ),
                subtitle: Text(msgs[index]),
                trailing: Text(msgTiming[index]),
              );
            })

          ],
        ),
      ),
    );
  }
}


