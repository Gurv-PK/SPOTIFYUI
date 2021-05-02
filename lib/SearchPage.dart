import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 1.0),
        child: Column(
          children: [
            Center(
              child: Text(
                "Search",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 28.0
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 10.0),
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  prefixIcon: Icon(Icons.search,color: Colors.black,size: 28.0,),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  hintText: "Find your Music"
                ),
              ),
            ),
            Expanded(
              child: GridView.count(
                primary: false,
                padding: EdgeInsets.all(10),
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                          "Pop Music",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white
                        ),
                      ),
                      color: Colors.purple,
                    ),

                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        "Rock Music",
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white
                        ),
                      ),
                      color: Colors.greenAccent,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        "Pop Music",
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white
                        ),
                      ),
                      color: Colors.purple,
                    ),

                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        "Rock Music",
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white
                        ),
                      ),
                      color: Colors.greenAccent,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        "Pop Music",
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white
                        ),
                      ),
                      color: Colors.purple,
                    ),

                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        "Rock Music",
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white
                        ),
                      ),
                      color: Colors.greenAccent,
                    ),
                  ),
                ],
              ),)
          ],
        ),
      ),

    );
  }
}

