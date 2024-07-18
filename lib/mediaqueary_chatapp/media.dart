import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:theme/mediaqueary_chatapp/chat.dart';

import 'chatpaper.dart';

class MediaPage extends StatefulWidget {
  @override
  State<MediaPage> createState() => _MediaPageState();
}

class _MediaPageState extends State<MediaPage> {
  int current=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: MediaQuery.of(context).orientation==Orientation.portrait?
      AppBar(
        title: Text('WhatsApp',style: TextStyle(color: Colors.green),),
        actions: [
          Icon(Icons.camera_alt_outlined),
          SizedBox(width: 8,),
          Icon(Icons.more_vert),

        ],
      ):
      AppBar(
        title: Text('WhatsApp',),backgroundColor: Colors.grey.shade200,),
      body: MediaQuery.of(context).orientation==Orientation.portrait?
      Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.white,
            child: Column(children: [
              Container(
                height: 50,
                width: 480,
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(55)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(children: [
                    Icon(Icons.search),
                    Text('Search')
                  ],),
                ),
              ),
              Expanded(
                  child: ListView.builder(
                    itemCount: ChatItemPage.listWhat.length,
                    itemBuilder: (context, index) {
                    var itemIndex=ChatItemPage.listWhat[index];
                    return ListTile(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ChatPaper(currentIndex: index,),));
                      },
                      leading: CircleAvatar(
                        backgroundImage: itemIndex['Image'],
                      ),
                      title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(itemIndex['name'],style: TextStyle(fontSize: 20)),
                          Text(itemIndex['date'],style: TextStyle(fontSize: 14)),
                        ],
                      ),
                        subtitle: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(itemIndex['mess'],style: TextStyle(fontSize: 20)),
                            Container(
                              width: 23,
                              height: 23,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.green
                              ),
                              child: Center(child: Text('${itemIndex['mac']}',style: TextStyle(fontSize: 14)),),)
                          ],
                        ),

                    );
                  },),
                ),
              ],
            ),
          ),
          Positioned(
              bottom: 20,
              right: 12,
              child: Container(
                height: 50,
                width: 50,
                child: Icon(Icons.message_rounded,color: Colors.white,),
                decoration: BoxDecoration(
                  color: Colors.teal,
                    borderRadius: BorderRadius.all(Radius.elliptical(10, 10))
                ),),
          )
        ],
      ):
      Row(children: [
        Container( height: MediaQuery.of(context).size.height*1,
          width: MediaQuery.of(context).size.width*0.03,
          color: Colors.grey.shade200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Column(
              children: [
                SizedBox(height: 8,),
              Icon(Icons.message_sharp,color: Colors.grey.shade700),
                SizedBox(height: 8,),
              Icon(Icons.call,color: Colors.grey.shade700),
                SizedBox(height: 8,),
              Icon(Icons.blur_circular,color: Colors.grey.shade700),
                SizedBox(height: 8,),
            ],),
            Column(children: [
              SizedBox(height: 8,),
              Icon(Icons.star_border,color: Colors.grey.shade700),
              SizedBox(height: 8,),
              Icon(Icons.archive_outlined,color: Colors.grey.shade700),
              SizedBox(height: 8,),
              Icon(Icons.settings,color: Colors.grey.shade700),
              SizedBox(height: 8,),
              Icon(Icons.account_circle_sharp,color: Colors.grey.shade700,),
              SizedBox(height: 8,),
            ],),

          ],
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height*1,
          width: MediaQuery.of(context).size.width*0.3,
          decoration: BoxDecoration(
            color: Colors.white,
              border: Border.all(color: Colors.grey.shade400),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(12))
          ),
          child: ListView.builder(
            itemCount: ChatItemPage.listWhat.length,
            itemBuilder: (context, index) {
              var itemIndex=ChatItemPage.listWhat[index];
              return ListTile(
                onTap: (){
                  current=index;
                  setState(() {

                  });
                },
                leading: CircleAvatar(
                  backgroundImage: itemIndex['Image'],
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(itemIndex['name'],style: TextStyle(fontSize: 20)),
                    Text(itemIndex['date'],style: TextStyle(fontSize: 14)),
                  ],
                ),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(itemIndex['mess'],style: TextStyle(fontSize: 20)),
                    Container(
                      width: 23,
                      height: 23,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green
                      ),
                      child: Center(child: Text('${itemIndex['mac']}',style: TextStyle(fontSize: 14)),),)
                  ],
                ),

              );
            },),
        ),
        Container(
          height: MediaQuery.of(context).size.height*1,
          width: MediaQuery.of(context).size.width*0.67,
         decoration: BoxDecoration(
          color: Colors.white,
           border: Border.all(color: Colors.grey.shade300),
        ),
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                border: Border.symmetric(horizontal: BorderSide(color: Colors.grey.shade400,))
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(children: [
                  CircleAvatar(
                    backgroundImage: ChatItemPage.listWhat[current]['Image'],
                  ),
                  SizedBox(width: 8,),
                  Expanded(child: Text('${ChatItemPage.listWhat[current]['name']}',style: TextStyle(fontSize: 20),)),
                  Container(
                  width: 90,
                  height: 40,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade400,)
                  ),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                      Icon(Icons.videocam),
                    Container(
                      color: Colors.grey.shade400,
                      width: 2,
                      height: 33,),
                      Icon(Icons.call_rounded),
                    ],),
                  ),
                  SizedBox(width: 8,),
                  Icon(Icons.search),
                ],),
              ),
            ),
            Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade400,)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(children: [
                  Icon(Icons.emoji_emotions_outlined,color: Colors.grey.shade700,),
                  Icon(Icons.attach_file,color: Colors.grey.shade700,),
                  Expanded(child: Text(' Type a message',style: TextStyle(color: Colors.grey.shade700,fontSize: 20),)),
                  Icon(Icons.mic_none_outlined,color: Colors.grey.shade700,),
                ],
                ),
              ),
            )
          ],
          ),
        )

      ],),
    );
  }
}
