import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Linked_device.dart';
import 'package:whatsapp_ui/Payments.dart';
import 'package:whatsapp_ui/Profile.dart';
import 'package:whatsapp_ui/Settings.dart';
import 'package:whatsapp_ui/status_ui.dart';
import 'First.dart';
import 'calls_ui.dart';
import 'camera_ui.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 1;
  int selected = 0;
  int selected2=0;

  /*final action0 = <Widget>[
    PopupMenuButton(
       onSelected: (selected){
         if(selected==0)
           {
             Navigator.push(context,MaterialPageRoute(builder: (context){
               return Settings();
             }
             )
             );
           }
       },
      child: Icon(Icons.more_vert),
        itemBuilder: ((context) => [
      PopupMenuItem(child: Column(
        children: [
          Row(
            children: [
              Text('Settings')
            ],
          )
        ],
      ))
    ]))
  ];
  final action1 = <Widget>[
   IconButton(onPressed: (){}, icon: Icon(Icons.search)),
    SizedBox(width: 10,),
    PopupMenuButton(
      child: Icon(Icons.more_vert),
        itemBuilder: ((context) => [
      PopupMenuItem(child: Column(
        children: [
          Text('Settings'),
          SizedBox(height: 10,),
          Text('Privacy'),
          SizedBox(height: 10,),
          Text('Account'),
          SizedBox(height: 10,),
          Text('Payments'),

        ],
      ))
    ]))
  ];
  final action2 = <Widget>[
      IconButton(onPressed: (){}, icon: Icon(Icons.search)),
  ];
  final action3 = <Widget>[
    IconButton(onPressed: (){}, icon: Icon(Icons.search)),
    SizedBox(width: 10,),
    PopupMenuButton(
        child: Icon(Icons.more_vert),
        itemBuilder: ((context) => [
          PopupMenuItem(child: Column(
            children: [
              Text('Missed'),
              SizedBox(height: 10,),
              Text('Recieved'),
            ],
          ))
        ]))
  ];*/

  @override
  Widget build(BuildContext context) {
    final action0 = <Widget>[
      PopupMenuButton(
          onSelected: (selected) {
            print(selected);
            if (selected == 0) {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Settings();
              }));
            }
          },
          child: Icon(Icons.more_vert),
          itemBuilder: ((context) => [
                PopupMenuItem(
                  child: Column(
                    children: [
                      Row(
                        children: [Text('Settings')],
                      )
                    ],
                  ),
                  value: 0,
                )
              ]))
    ];
    final action1 = <Widget>[
      IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_outlined)),
      IconButton(onPressed: () {}, icon: Icon(Icons.search)),
      SizedBox(
        width: 10,
      ),
      PopupMenuButton(
        onSelected: (selected){
          if (selected == 5) {

            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Settings();
            }
            ),
            );
          }
          else if(selected==2)
            {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return Linked_device();
              }
              )
              );
            }
          else if(selected==4)
          {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Payments();
            },));
          }

        },
          child: Icon(Icons.more_vert),
          itemBuilder: ((context) => [
                PopupMenuItem(
                 value: 0,
                    child: Text('New Group'),),
                PopupMenuItem(
              value: 1,
              child: Text('New Broadcast'),),
            PopupMenuItem(
              value: 2,
              child: Text('Linked Devices'),),
            PopupMenuItem(
              value: 3,
              child: Text('Starred Messages'),),
            PopupMenuItem(
              value: 4,
              child: Text('Payments'),),
            PopupMenuItem(
              value: 5,
              child: Text(
                'Settings'
              ),
            ),
              ]))
    ];
    final action2 = <Widget>[
      IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_outlined)),
      IconButton(onPressed: () {}, icon: Icon(Icons.search)),
      PopupMenuButton(
        onSelected: (selected2){
          if(selected2==1)
            {
              Navigator.push(context, MaterialPageRoute(builder: ((context) {
                return Settings();
              })));
            }
        },
          itemBuilder: ((context) =>
    [
      PopupMenuItem(
           value: 0,
          child: Text('Status Privacy'),
      ),
    PopupMenuItem(value: 1,
    child: Text('Settings'),),
    ]))

    ];
    final action3 = <Widget>[

      IconButton(onPressed: () {}, icon: Icon(Icons.search)),
      SizedBox(
        width: 10,
      ),
     PopupMenuButton(
       onSelected: (selected2){
         if(selected2==1)
           {
             Navigator.push(context, MaterialPageRoute(builder: (context) {
               return Settings();
             },));
           }
       },
       itemBuilder: (context) => [
       PopupMenuItem(
         value: 0,
         child: Text('Clear Call Log'),
       ),
       PopupMenuItem(
         child: Text('Settings'),
         value: 1,
       ),
     ],)
    ];

    return DefaultTabController(
      initialIndex: selectedIndex,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text(
            'Whatsapp',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),
          ),
          actions: (selectedIndex == 0
              ? action0
              : (selectedIndex == 1
                  ? action1
                  : (selectedIndex == 2
                      ? action2
                      : action3))) /*[
            Icon(Icons.camera_alt_rounded),
            SizedBox(
              width: 20,
            ),
            Icon(Icons.search),
            SizedBox(
              width: 18,
            ),
            PopupMenuButton(
              child: Icon(Icons.more_vert),
              itemBuilder: (context) => [
                PopupMenuItem(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text('Status Privacy'),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text('Settings'),
                          ],
                        ),
                      ],
                    ))
              ],
            ),
          ]*/
          ,
          bottom: TabBar(
            indicatorColor: Colors.white,
            onTap: (index) {
              selectedIndex = index;
              setState(() {});
            },
            tabs: [
              Tab(
                child: Icon(Icons.groups, size: 26),
                iconMargin: EdgeInsets.zero,
              ),
              Tab(
                child: Text('Chats', style: TextStyle(fontSize: 20)),
              ),
              Tab(
                child: Text('Status', style: TextStyle(fontSize: 20)),
              ),
              Tab(
                child: Text('Calls', style: TextStyle(fontSize: 20)),
              ),
              /*Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FittedBox(child: Icon(Icons.groups, size: 30)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Chats', style: TextStyle(fontSize: 17)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Status', style: TextStyle(fontSize: 17)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Calls', style: TextStyle(fontSize: 17)),
                    ],
                  ),*/
            ],
          ),
        ),
        body: TabBarView(
          children: [
            camera_ui(),
            First(),
            status_ui(),
            calls_ui(),
          ],
        ),
      ),
    );
  }
}
