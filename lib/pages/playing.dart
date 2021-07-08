import 'package:flutter/material.dart';
import 'package:online_music_player/theme/colors.dart';

class PlayingPage extends StatefulWidget {
  @override
  _PlayingPageState createState() => _PlayingPageState();
}

class _PlayingPageState extends State<PlayingPage> {
  var favoriteStar = false;
  var favoriteHeart = false;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return 
    Scaffold(
      backgroundColor: white,
      // appBar: AppBar(
      //   backgroundColor: Colors.black,
      //   flexibleSpace: Container(
      //     decoration: BoxDecoration(
      //       gradient: LinearGradient(
      //         colors: [
      //           Color(0xFF3AA575),
      //           Color(0xFF4CD4A9),
      //         ],
      //       ),
      //     ),
      //   ),
      //   elevation: 0.0,
      //   title: Text('Now Playing'),
      //   centerTitle: true,
      //   leading: IconButton(
      //     icon: Icon(
      //       Icons.arrow_back_ios,
      //       size: 15.0,
      //     ),
      //     onPressed: () {},
      //   ),
      //   actions: [
      //     IconButton(
      //       icon: Icon(Icons.share),
      //       onPressed: () {},
      //     ),
      //     IconButton(
      //       icon: Icon(favoriteStar ? Icons.star : Icons.star_border),
      //       onPressed: () {
      //         setState(() {
      //           if (favoriteStar)
      //             favoriteStar = false;
      //           else
      //             favoriteStar = true;
      //         });
      //       },
      //     ),
      //   ],
      // ),
      body: ListView(
        children: <Widget>[
          // SizedBox(height: 50,),
          Container(
            height: height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFFDB4437),
                  Color(0xFFfbced1),
                ],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(25.0),
                        child: Image(
                          image: Song().albumCover,
                          fit: BoxFit.cover,
                          width: MediaQuery.of(context).size.width * .8,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                Song().title,
                                style:
                                    TextStyle(color: Colors.white, fontSize: 25.0),
                              ),
                              IconButton(
                                icon: Icon(
                                  favoriteHeart
                                      ? Icons.favorite
                                      : Icons.favorite_border,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  setState(() {
                                    if (favoriteHeart)
                                      favoriteHeart = false;
                                    else
                                      favoriteHeart = true;
                                  });
                                },
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                Song().singerName,
                                style: TextStyle(
                                  color: white.withOpacity(0.7),
                                  fontSize: 16.0,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5.0),
                            child: LinearProgressIndicator(
                              backgroundColor: Colors.grey,
                              valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF25D0DE)),
                              value: .8,
                              // minHeight: 10.0,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '1:24',
                                  style: TextStyle(
                                    color: black.withOpacity(0.4),
                                  ),
                                ),
                                Text(
                                  '1:48',
                                  style: TextStyle(
                                    color: black.withOpacity(0.4),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              IconButton(
                                icon: Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.white,
                                ),
                                onPressed: () {},
                              ),
                              IconButton(
                                iconSize: 70.0,
                                icon: Icon(
                                  Icons.play_arrow,
                                  color: Colors.white,
                                ),
                                onPressed: () {},
                              ),
                              IconButton(
                                icon: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                ),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ],
                      ),
                ]
              ), 
            ),
          ),
        ],
      )
    );
  }
}

class Song {
  String title = 'You Are Not Nlone';
  String singerName = 'Michael Jackson';
  AssetImage albumCover = AssetImage("assets/images/playing-bg.jpeg");
}
