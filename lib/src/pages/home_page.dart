import 'package:clonwatsap/src/screens/call_screem.dart';
import 'package:clonwatsap/src/screens/camera_screem.dart';
import 'package:clonwatsap/src/screens/chat_screem.dart';
import 'package:clonwatsap/src/screens/status_screem.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();// length: total de tabs qu vamos a tener,initial 0:camara
    tabController = new TabController(vsync: this,length: 4,initialIndex: 1,)..addListener((){
      setState(() {
        
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    
    TabBar tabBar= new TabBar(
      controller: tabController,//al dar clic en uno de las opciones cvambia la vista de acuerdo a su orden
     tabs: <Widget>[
       Tab(icon: Icon(Icons.camera_alt),),//primer tabs//0
       Tab(text: 'CHATS',),//1
       Tab(text: 'ESTADOS',),//2
       Tab(text: 'LLAMADAS',)//3
     ], 
      isScrollable: true,// PARA QU ESTAN MÁS APEGADOS
    );

    AppBar appBar = new AppBar(
      title: Text('WhatsApp'),
      bottom: tabBar,
      actions: <Widget>[
       Icon(Icons.search),
       Padding(padding: const EdgeInsets.symmetric(horizontal: 5.0),),
       IconButton(
        icon: Icon(Icons.more_vert),
        onPressed: (){},
        ),
      ],
    );

    //MANEJAMOS LAS VISTAS CON EL TabController
    // VISTA DE CADA TAB
    TabBarView tabBarView = new TabBarView(
      controller: tabController,//
      children: <Widget>[
        CameraScreen(),//0
        ChatScreen(),//1
        StatusScreen(),//2
        CallScreem(),//3
      ],
    );


   floatActionButton(Icon icon){
     return new FloatingActionButton(onPressed: null,foregroundColor: Colors.white,backgroundColor: Theme
     .of(context).accentColor,
     child: icon,
     );
   }

   Widget floatingActionButtonStatus(Icon iconEdit,Icon iconCamera){
     return new Column(
       mainAxisAlignment: MainAxisAlignment.end,
       crossAxisAlignment: CrossAxisAlignment.end,
       children: <Widget>[
         FloatingActionButton(
           onPressed: null,
           foregroundColor: Color(0xff49646c),
           backgroundColor: Color(0xffebf4fc),
           child: iconEdit,
         ),
         SizedBox(height: 10.0,),
         floatActionButton(iconCamera)
       ],
     );
   }

    return Scaffold(
       appBar: appBar,
       body: tabBarView,
       floatingActionButton:
        tabController.index==0? new Container()
        :tabController.index==1? floatActionButton(Icon(Icons.message)) 
        :tabController.index==2? floatingActionButtonStatus(Icon(Icons.edit),Icon(Icons.camera_alt))
        :floatActionButton(Icon(Icons.add_call)),
    );
  }
}