import 'package:flutter/material.dart';
import 'package:whatsapp_ui/MessagePage.dart';

class chat_screen extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
         titleSpacing: 0.0,
         title: Row(

           children: [
             IconButton(onPressed: (){}, icon: Icon(Icons.account_circle_rounded)),
             Padding(
               child: Text('Akshat'),
                 padding: EdgeInsets.only(left: 6)
             ),
           ],
         ),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.video_call)),
            IconButton(onPressed: (){}, icon: Icon(Icons.phone)),
            IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),
          ],

        ),
      body: Container(
        alignment: Alignment.bottomCenter,
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(child: MessagePage(key: null,)),
            TextFormField(
              minLines: 1,
              maxLines: 5,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(color: Colors.grey, width: 0.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(color: Colors.grey, width: 0.0),
                ),
                hintText: 'Type a message',
              ),
            )
          ],
        ),
      ),
    );
  }

}
