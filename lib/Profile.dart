import 'package:flutter/material.dart';

class Profile extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('Profile'),
       backgroundColor: Colors.teal,
     ),
    body: Column(
      children: [
        SizedBox(height: 40,),
        ClipOval
          (child: Image.network('https://images.pexels.com/photos/268533/pexels-photo-268533.jpeg?cs=srgb&dl=pexels-pixabay-268533.jpg&fm=jpg',fit: BoxFit.cover,height: 180,width:180,)),
        SizedBox(height: 20,),
        ListTile(
           leading: IconButton(icon: Icon(Icons.person), onPressed: () {  },
           ),
          title: Text('Name\n'
              'Dwayne',style: TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text('This is not your username or your pin. This name will be visible to all your Whatsapp Contacts'),
          trailing: IconButton(
            icon: Icon(Icons.edit),
            onPressed: (){},
          ),


        ),
        SizedBox(height: 20,),
        ListTile(
          onTap: (){},
          leading: IconButton(icon: Icon(Icons.error_outline),
          onPressed: (){}),
         title: Text('About'),
         subtitle: Text('Busy'),
          trailing: IconButton(
            onPressed: (){},
            icon: Icon(Icons.edit),
          ),
        ),
        SizedBox(height: 20,),
        ListTile(
          leading: IconButton(icon: Icon(Icons.phone),
              onPressed: (){}),
          title: Text('Phone'),
          subtitle: Text('+91 8577015074'),
        ),
        SizedBox(height: 20,),

      ],
    ),

   );
  }

}