import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
   

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
            ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context , index) {
                return Container();
              },
            )
          ],
        ),
      ),
    );
  }
}

