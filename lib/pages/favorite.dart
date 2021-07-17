import 'package:flutter/material.dart';
import 'package:flutter_advanced_networkimage/provider.dart';
import 'package:flutter_advanced_networkimage/transition.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:online_music_player/json/constant.dart';
import 'package:online_music_player/theme/colors.dart';

class FavoritePage extends StatefulWidget {
  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: listFavorites(),
    );
  }

  Widget listFavorites(){
    return ([null, 0, ''].contains(favorites) || favorites.length == 0) ? Container() :

     ListView.builder(
                // controller: _scrollController,
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                itemCount: favorites.length,
                itemBuilder: (BuildContext ctxt, int index){
                  if(index > 0)
                    return slidePost(favorites[index], index);
                  return 
                    Column(
                      children: <Widget>[
                        SizedBox(height: 50,),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Favorites", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        slidePost(favorites[index], index)
                      ],
                    );
                }
              );
  }

  Widget slidePost(post, index){
    return 
    Column(
      children:[
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
                                        borderRadius: BorderRadius.circular(3),
                                        image: AdvancedNetworkImage(post["image"]),
                                        fit: BoxFit.cover,
                                        width: 100, height: 80,
                                      ),
                                    ),
                          SizedBox(width: 15,),
                          Expanded(
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
                          // IconButton(icon: Icon(Icons.close, color: grey,), 
                          //   onPressed: (){
                            
                          //   }
                          // )
                        ],
                      ),
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
      ),
      Divider(color: grey,)
    ]);
  }

}