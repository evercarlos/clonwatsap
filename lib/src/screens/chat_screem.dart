import 'dart:math';

import 'package:flutter/material.dart';
import 'package:clonwatsap/src/models/entity/chat_model.dart';

class ChatScreen extends StatefulWidget {
  ChatScreen({Key key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  @override
  Widget build(BuildContext context) {

    Widget notificationCircle(value){
      return Container(
        child: Center(child: Text(value.toString(),style: TextStyle(color: Colors.white),)),
        height: 20.0,
        width: 20.0,
        decoration: BoxDecoration(
          color: Theme.of(context).accentColor,
          shape: BoxShape.circle,
        ),
      );
    }

    return ListView.builder(
      itemCount: temporalData.length,
      itemBuilder: (BuildContext context, int i) {
      return Column(
        children: <Widget>[
          Divider(height: 5.0,),
          ListTile(
            leading: CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(temporalData[i].avatarUrl),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(temporalData[i].name,style: TextStyle(fontWeight: FontWeight.bold),),
                  Text(temporalData[i].hour,style: TextStyle(color: Colors.grey,fontSize: 14.0),), 
                ],
              ),
              subtitle: Container(
                padding: const EdgeInsets.only(top:5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(temporalData[i].message,style: TextStyle(color: Colors.grey,fontSize: 15.0),),
                  temporalData[i].newMessage==0
                  ? new Container()
                  :notificationCircle(Random().nextInt(5)+1)
                  ],
                ),
              ),
          )
        ],
      );
     },
    );
    
  }
}