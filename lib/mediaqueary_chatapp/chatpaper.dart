import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:theme/mediaqueary_chatapp/chat.dart';

class ChatPaper extends StatelessWidget {
  int currentIndex;
   ChatPaper({required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    var itemIndex=ChatItemPage.listWhat[currentIndex];
    return Scaffold(
      appBar: AppBar(shape: RoundedRectangleBorder(side: BorderSide(color: Colors.grey.shade400,)),
        leading: SizedBox(height: 20,width: 20,
          child: CircleAvatar(
            backgroundImage: itemIndex['Image'],
          ),
        ),
         title: Text(itemIndex['name'],style: TextStyle(fontSize: 20)),
        actions: [
          Icon(Icons.videocam),
          SizedBox(width: 8,),
          Icon(Icons.call_rounded),
          SizedBox(width: 8,),
          Icon(Icons.more_vert),
          SizedBox(width: 10,),
        ],
      ),
      body: Column(
        children: [
          Expanded(flex: 11,
            child: Container(
          ),),
          Expanded(
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 5,),
                Expanded(
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all()),
                    child: Row(children: [
                      SizedBox(width: 10,),
                      Icon(Icons.emoji_emotions_outlined,color: Colors.grey.shade700,),
                      Expanded(child: Text(' Message',style: TextStyle(color: Colors.grey.shade700,fontSize: 20),)),
                      Icon(Icons.attach_file,color: Colors.grey.shade700,),
                      Icon(Icons.mic_none_outlined,color: Colors.grey.shade700,),
                      Icon(Icons.camera_alt_outlined,color: Colors.grey.shade700,),
                      SizedBox(width: 10,),
                    ],
                    ),
                  ),
                ),
                SizedBox(width: 8,),
             Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(color: Colors.teal,
                  shape: BoxShape.circle,
                  ),
            child: Center(child: Icon(Icons.mic,color: Colors.white,),),)
              ],
            ),
          ),
        ],
      ),

    );
  }
}
