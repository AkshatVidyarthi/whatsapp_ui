import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Profile.dart';

class Settings extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.teal,
       title: Text('Settings'),
     ),
     body: SingleChildScrollView(
       child: Column(
         children: [
           ListTile(
             onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (context) {
                 return Profile();
               },));
             },
             leading: Icon(Icons.account_circle,size: 50),
             title: Text('Akshat Vidyarthi'),
             subtitle: Text('Hey There! I am using Whatsapp'),
           ),
           SizedBox(height: 10,),
           ListTile(
             leading: IconButton(
               onPressed: (){},icon: Icon(Icons.key),

             ),
             title: Text('Account'),
             subtitle: Text('Privacy,security,change number'),
           ),
           SizedBox(height: 10,),
           ListTile(
             onTap: (){},
             leading: IconButton(
               icon: Icon(Icons.adb_rounded), onPressed: () {  },
             ),
             title: Text('Avatar'),
             subtitle: Text('Create edit,profile photo'),

           ),
           SizedBox(height: 10,),
           ListTile(
             leading:IconButton(
               icon: Icon(Icons.lock),
               onPressed: (){},
             ),
             title: Text('Privacy'),
             subtitle: Text('Block Contacts,Disappearing Messages'),
             onTap: (){},

           ),
           SizedBox(height: 10,),
           ListTile(
             leading: IconButton(
               onPressed: (){},
               icon: Icon(Icons.chat,
               ),
             ),
             title: Text('Chats'),
             subtitle: Text('Backup,History Wallpaper'),
           ),
           SizedBox(height: 10,),
           ListTile(
             leading: IconButton(
               onPressed: (){},
               icon: Icon(Icons.notifications,
               ),
             ),
             title: Text('Notifications'),
             subtitle: Text('Message,group and call tones'),
           ),
           SizedBox(height: 10,),
           SizedBox(height: 10,),
           ListTile(
             leading: IconButton(
               onPressed: (){},
               icon: Icon(Icons.payment_outlined,
               ),
             ),
             title: Text('Payments'),
             subtitle: Text('History and Bank Accounts'),
           ),
           SizedBox(height: 10,),
           ListTile(
             leading: IconButton(
               onPressed: (){},
               icon: Icon(Icons.data_usage,
               ),
             ),
             title: Text('Data and storage usage'),
             subtitle: Text('Network usage,auto download'),
           ),
           SizedBox(height: 10,),
           ListTile(
             onTap: (){},
             leading: IconButton(
               onPressed: (){},
               icon: Icon(Icons.language),
             ),
             title: Text('App Language'),
             subtitle: Text('English(Phone Language)'),
           ),
           SizedBox(height: 10,),
           ListTile(
             leading: IconButton(
               onPressed: (){},
               icon: Icon(Icons.help,
               ),
             ),
             title: Text('Help'),
             subtitle: Text('FAQ, Contact us,Privacy Poilicy'),
           ),
           SizedBox(height: 10,),
           ListTile(
             leading: IconButton(
               onPressed: (){},
               icon: Icon(Icons.people,
               ),
             ),
             title: Text('Invite a Friend'),

           ),
           SizedBox(height: 10,),

         ],
       ),
     ),
   );
  }

}