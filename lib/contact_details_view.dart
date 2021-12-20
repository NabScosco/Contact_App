import 'package:flutter/material.dart';

class ContactDetailsView extends StatelessWidget {
  const ContactDetailsView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
     appBar: AppBar(
       backgroundColor: Colors.white,
       elevation: 0,
       iconTheme: const IconThemeData(color: Colors.black),
       centerTitle: true,
       title: const  Text('Contact', 
       style: TextStyle(
         fontSize: 26, 
         fontWeight: FontWeight.w600,
         color: Colors.black),
         ),
         actions: [IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert))
         ],
         ),
         body: ListView(
           children: [
              const CircleAvatar(  backgroundImage: AssetImage('assets/jose.jpg'), radius: 70,
             ),
             const SizedBox(height: 25),
             const Center(child: Text('Fullname', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600))),
            const  Center(child: Text('Location', style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal))),
            const  SizedBox(height: 30),
             const SizedBox(height: 30),
             Container(
               color: const Color(0xffD3E7ED),
               child: ListTile(
                 title: Text('Mobile'),
                 subtitle: Text('+233 59 22 36 389'),
                 trailing: Row(
                   mainAxisSize: MainAxisSize.min,
                   children: [
                     IconButton(onPressed: null, icon: Icon(Icons.message),),
                     IconButton(onPressed: null, icon: Icon(Icons.call))
                     ],
                 )),
               ),
             
           ],
         ),

      
    );
  }
}