import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  List<String> CoverList =[
    "https://i.pinimg.com/originals/f5/82/47/f58247463e38a536f442bfb816f62c6b.jpg",
    "https://www.designformusic.com/wp-content/uploads/2016/09/electro-synthwave-album-cover-500x500.jpg",
    "https://fiverr-res.cloudinary.com/images/q_auto,f_auto/gigs/102342461/original/68ef1e1fab3c4028d51f7fd7cfa9bad2232e576c/create-a-copyright-free-album-cover.jpg",
    "https://www.designformusic.com/wp-content/uploads/2016/02/volta-music-trailer-music-album-cover-design.jpg",
    "https://www.designformusic.com/wp-content/uploads/2018/07/Digital-World-album-cover-design.jpg",
    "https://www.designformusic.com/wp-content/uploads/2016/02/volta-music-trailer-music-album-cover-design.jpg"
  ];

  //Album Widget

  Widget AlbumWidget(String CoverUrl, String CoverName, String SingerName){
    return Container(
      child: InkWell(
        onTap: (){},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius : BorderRadius.circular(12.0),
              child: Container(
                height: 140.0,
                width: 140.0,
                child: Image.network(CoverUrl),
              ),
            ),
            SizedBox(
              height: 14.0,
            ),
            Text(
              CoverName,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w800,
                fontSize: 18.0
              ),
            ),
            Text(
              SingerName,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 14.0
              ),
            )
          ],
        ),
      )
    );
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 40.0,horizontal: 25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Recommended For You",
            style: TextStyle(
              color: Colors.white,
              fontSize: 22.0
            ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                AlbumWidget(CoverList[0], "CoverName", "SingerName"),
                SizedBox(width: 20.0),
                AlbumWidget(CoverList[1], "CoverName", "SingerName"),
                SizedBox(width: 20.0),
                AlbumWidget(CoverList[2], "CoverName", "SingerName"),
                SizedBox(width: 20.0),

              ],
            )),
            Text(
              "New Music Here",
              style: TextStyle(
                color: Colors.white,
                  fontSize: 22.0
              ),
            ),
            SizedBox(height: 22.0),
            Expanded(child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                AlbumWidget(CoverList[3], "CoverName", "SingerName"),
                SizedBox(width: 20.0),
                AlbumWidget(CoverList[4], "CoverName", "SingerName"),
                SizedBox(width: 20.0),
                AlbumWidget(CoverList[5], "CoverName", "SingerName"),
                SizedBox(width: 20.0),

              ],
            )),
          ],
        ),
      ),
    );
  }
}

