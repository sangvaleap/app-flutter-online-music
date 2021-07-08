import 'package:flutter/material.dart';
import 'package:flutter_advanced_networkimage/provider.dart';
import 'package:flutter_advanced_networkimage/transition.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:online_music_player/theme/colors.dart';

class FavoritePage extends StatefulWidget {
  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  List posts = [
    {"title" : "Take me to your heart", "singer" : "Jhonny Jason",
      "image" : "https://images.unsplash.com/photo-1523497894237-6809839f72dd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60"},
    {"title" : "I miss you like crazy", "singer" : "Jhonny Jason",
    "image" : "https://images.unsplash.com/photo-1501196354995-cbb51c65aaea?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mjd8fGZhc2hpb258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"},
    {"title" : "Take me to your heart", "singer" : "Jhonny Jason",
    "image" : "https://images.unsplash.com/photo-1523497894237-6809839f72dd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60"},
    {"title" : "I miss you like crazy", "singer" : "Jhonny Jason",
    "image" : "https://images.unsplash.com/photo-1567131308523-383d0fea9671?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTZ8fGZhc2hpb258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"},
    {"title" : "Take me to your heart", "singer" : "Jhonny Jason",
    "image" : "https://images.unsplash.com/photo-1501196354995-cbb51c65aaea?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mjd8fGZhc2hpb258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"},
    {"title" : "I miss you like crazy", "singer" : "Jhonny Jason",
    "image" : "https://images.unsplash.com/photo-1567131308523-383d0fea9671?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTZ8fGZhc2hpb258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"},
    {"title" : "Take me to your heart", "singer" : "Jhonny Jason",
    "image" : "https://images.unsplash.com/photo-1523497894237-6809839f72dd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60"},
    {"title" : "I miss you like crazy", "singer" : "Jhonny Jason",
    "image" : "https://images.unsplash.com/photo-1567131308523-383d0fea9671?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTZ8fGZhc2hpb258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"},
    {"title" : "Take me to your heart", "singer" : "Jhonny Jason",
    "image" : "https://images.unsplash.com/photo-1523497894237-6809839f72dd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60"},
    {"title" : "I miss you like crazy", "singer" : "Jhonny Jason",
    "image" : "https://images.unsplash.com/photo-1567131308523-383d0fea9671?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTZ8fGZhc2hpb258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: listFavorites(),
    );
  }


  Widget listFavorites(){
    return ([null, 0, ''].contains(posts) || posts.length == 0) ? Container() :

     ListView.builder(
                // controller: _scrollController,
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                itemCount: posts.length,
                itemBuilder: (BuildContext ctxt, int index){
                  if(index > 0)
                    return slidePost(posts[index], index);
                  return 
                    Column(
                      children: <Widget>[
                          SizedBox(
                          height: 50,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Favorites",
                                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        slidePost(posts[index], index)
                      ],
                    );
                }
              );
  }

  Widget blockHead(){

  }

  Widget slidePost(post, index){
    return 
      Slidable(
        actionPane: SlidableDrawerActionPane(),
        actionExtentRatio: 0.25,
        child: 
          InkWell(
            onTap: (){ 
              
            },
            child:
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child:
              Column(
                children: <Widget>[
                  SizedBox(height: 1),
                      Row(
                        children: <Widget>[
                          Container(
                                      child: TransitionToImage(
                                        image: AdvancedNetworkImage(post["image"]),
                                        fit: BoxFit.cover,
                                        width: 100, height: 80,
                                      ),
                                    ),
                          SizedBox(width: 15,),
                          Flexible(
                            // child: Padding(
                            //   padding: EdgeInsets.only(left: 7),
                            //   child: Text(post['title'],
                            //             style: TextStyle(
                            //               fontWeight: FontWeight.w500, fontSize: 16, color: black, 
                            //             ),
                            //             maxLines: 3,
                            //             overflow: TextOverflow.ellipsis),
                            // )
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Text(
                                  post['title'],
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: black,
                                      height: 1.5),
                                ),
                                Text(
                                  post['singer'],
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: black.withOpacity(0.8),
                                      height: 1.5),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                  Divider(color: grey) 
                ],
              ),
            )
        ),
        
        secondaryActions: <Widget>[
          IconSlideAction(
            caption: 'Share',
            color: Colors.indigo,
            icon: Icons.share,
            onTap: ()  {

            },
          ),
          IconSlideAction(
            caption: 'Remove',
            color: Colors.red,
            icon: Icons.delete,
            onTap: () => {},
          ),
        ],
      );
  }

}