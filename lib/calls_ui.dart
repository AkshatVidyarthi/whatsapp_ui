import 'package:flutter/material.dart';

class calls_ui extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: CircleAvatar(child: IconButton(onPressed: (){},icon: Icon(Icons.add_ic_call_sharp,size: 23,color: Colors.white,)),
      backgroundColor: Colors.green,radius: 27),
     body: Column(
       children: [
         ListTile(
           onTap: (){},
           leading: CircleAvatar(
             child: IconButton(
               icon: Icon(Icons.link_outlined),
               onPressed: (){},
               color: Colors.white,
             ),
           ),
           title: Text('Create Call Link'),
           subtitle: Text('Share a link for your Whatsapp Call'),
         ),
         Expanded(child:

         ListView.builder(
           itemBuilder: (BuildContext context, int index) {
             return Column(
               children: [

                 ListTile(
                   leading: Icon(
                     size: 50,
                     Icons.account_circle,
                   ),
                   title: Text('Antus',style: TextStyle(fontWeight: FontWeight.bold)),
                   subtitle: Row(
                     children: [
                       Icon(Icons.south_east,color: Colors.red,size: 18,),
                       Text('Just Now'),
                     ],
                   ),
                   trailing: Icon(Icons.call,color: Colors.teal,size: 30),
                 ),
                 ListTile(
                   leading: Icon(
                     Icons.account_circle,size: 50,
                   ),
                   title: Text('Catherine',style: TextStyle(fontWeight: FontWeight.bold

                   )),
                   subtitle: Text('Just Now'),
                   trailing: Icon(Icons.call,size: 30,color: Colors.teal),
                 ),
                 ListTile(
                   leading: Icon(
                     Icons.account_circle,size: 50,
                   ),
                   title: Text('Catherine',style: TextStyle(

                   )),
                   subtitle: Text('Just Now'),
                   trailing: Icon(Icons.call,size: 30,color: Colors.teal),
                 ),
               ],
             );

           },
           itemCount: 4,
         ),),
       ],
     ),



    );
  }
}
