import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
   List image = [
    "image/pic1.jpeg",
    "image/pic2.jpeg",
    "image/pic3.jpeg",
    "image/pic4.jpg",
    "image/pic5.jpg",
  ];

  List names = [
    "pic1",
    "pic2",
    "pic3",
    "pic4",
    "pic5",

  ];

  List msgTiming =[
    "Mon",
    "12:30",
    "sun",
    "22:20",
    "05:23",
    "wed",


  ];


  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: EdgeInsets.only(top: 15, left: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
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
            Text(
              "Recent",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.black54,
                fontSize: 18,
                letterSpacing: 1,
              ),
            ),
            SizedBox(height: 15,),
            SizedBox(
              height: 100,
              child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: image.length,              
              itemBuilder: (context , index) {
                return Column(
                  children: [
                    CircleAvatar(
                      backgroundImage : AssetImage(
                        image[index],),
                      maxRadius: 20,
                    ),
                  ],
                );
              },
            ),
            )
          ],
        ),
      ),
    );
  }
}


