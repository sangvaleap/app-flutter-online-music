import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:online_music_player/json/constant.dart';
import 'package:online_music_player/theme/colors.dart';
import 'package:online_music_player/widget/explore_cart.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key key }) : super(key: key);

  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: getBody(),
    );
  }

  Widget getBody() {
    return Column(
      children: [
        SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Text("Explore",
              //     style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)
              // ),
              // SizedBox(width: 30,),
              Expanded(child: 
                Container(
                  padding: EdgeInsets.zero,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: grey.withOpacity(0.3)),
                child: TextField(
                  decoration: InputDecoration(
                     hintText: "Search...",
                     hintStyle: TextStyle(color: black),
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search,
                        color: black
                      )
                  ),
                  style: TextStyle(color: black),
                  cursorColor: black
                ),
              ),

              )
              

            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Flexible(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              StaggeredGridView.countBuilder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 10),
                crossAxisCount: 2,
                itemCount: explores.length,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      
                    },
                    child: ExploreCart(
                      height: index.isEven ? 180 : 140,
                      image: explores[index]['image'],
                      title: explores[index]['title'],
                      singer: explores[index]['singer'],
                      leftIcon: Icon(CupertinoIcons.heart, size: 20, color: black.withOpacity(0.5),),
                      // like: '100',
                      // like: explores[index]['like'].toString(),
                    ),
                  );
                }
              ),
              SizedBox(height: 15,),
            ],
          ),
        ),
      ],
    );
  }

  
}