import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_networkimage/provider.dart';
import 'package:online_music_player/theme/colors.dart';

class ExploreCart extends StatelessWidget {
  final double height;
  final String image, title, singer, like;
  final Icon leftIcon;

  const ExploreCart({
    Key key, 
    this.height,
    this.image,
    this.title,
    this.singer,
    this.leftIcon,
    this.like,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: white,
        boxShadow: [
          BoxShadow(
            color: grey.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(0, 3)
          )
        ],
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: height,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(10)
                  ),
                  image: DecorationImage(
                    image: AdvancedNetworkImage(image),
                    fit: BoxFit.cover
                  )
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            child: Column(
              children: [
                Text(
                  title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    height: 1.3
                  ),
                ),
                // Row(
                //   children: [
                //     Container(
                //       width: ((size.width - 50) / 2) * 0.65,
                //       child: Row(
                //         children: [
                //           Container(
                //             height: 24,
                //             width: 24,
                //             decoration: BoxDecoration( 
                //               shape: BoxShape.circle,
                //               image: DecorationImage(
                //                 image: NetworkImage(profileUrl),
                //                 fit: BoxFit.cover
                //               )
                //             ),
                //           ),
                //           SizedBox(width: 5,),
                //           Flexible(
                //             child: Text(
                //               username,
                //               maxLines: 1,
                //               overflow: TextOverflow.ellipsis,
                //               style: TextStyle(
                //                 fontSize: 12,
                //                 fontWeight: FontWeight.w500,
                //                 color: black.withOpacity(0.5)
                //               ),
                //             ),
                //           )
                //         ],
                //       ),
                //     ),
                //     Container(
                //       width: ((size.width - 50) / 2) * 0.35,
                //       child: Row(
                //         mainAxisAlignment: MainAxisAlignment.end,
                //         children: [
                //           leftIcon,
                //           SizedBox(width: 3,),
                //           Flexible(
                //             child: Text(
                //               leftText,
                //               maxLines: 1,
                //               style: TextStyle(
                //                 fontWeight: FontWeight.w500,
                //                 color: black.withOpacity(0.5)
                //               ),
                //             ),
                //           )
                //         ],
                //       ),
                //     ),
                //   ],
                // )
              ],
            ),
          )
        ],
      ),
    );
  }
}