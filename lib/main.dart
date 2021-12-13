import 'dart:js';
import 'package:flutter/src/material/divider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';




void main(List<String> args) {
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder:(context)=>MiCard()));
  
}
class MiCard extends StatelessWidget {
  const MiCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: Scaffold(
        backgroundColor: Colors.green.shade700,
        body:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                radius: 100.0,
                backgroundImage: NetworkImage('https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'), 
              ),
            ),
            Text('Asmawu Zakaria',
            style: TextStyle(
              fontSize: 30,
              fontFamily:'Pacifico', 
              color: Colors.white),),
            Text('Junior Flutter Developer',
            style: TextStyle(
              fontSize: 20,
              fontFamily:'Source Sans Pro', 
              color: Colors.white,
              letterSpacing: 3
              ),
              ),
        SizedBox(
          height: 20,
          width: 300,
          child: Divider(
            color: Colors.white)),
        Card(
          margin: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child:ListTile(
              leading: Icon(
                Icons.call,
                size: 30,color:
                 Colors.green.shade700,),
                 title:Text('+2335397170',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  letterSpacing: 3,
                  fontSize: 25, 
                  color: Colors.green.shade700),) ,
              
            )
              
            ),
          ),
        

         Card(
          margin: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
          color: Colors.white,
          child: 
           Padding(
             padding: const EdgeInsets.all(8.0),
             child:ListTile(
               leading: Icon(
                  Icons.message,
                  size: 30,
                  color: Colors.green.shade900
                  ),
                  title:Text('sophiazakari717@gmail.com',style: TextStyle(fontSize: 22, color: Colors.green.shade700),) , 
               ) 
              
          ),
           ),


          ]
          ),
          ),
        );
  }
}
