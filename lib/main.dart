import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_project/onboard.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splashscreen(),
  ));
}
 class Splashscreen extends StatelessWidget {
   const Splashscreen({Key? key}) : super(key: key);
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Colors.transparent,
       body: Container(
         decoration: BoxDecoration(
         gradient: LinearGradient(
         colors: [Color(0xff22A6B3).withOpacity(0.67), Color(0xffBE2EDD).withOpacity(0.17)],
     ),
     ),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.center,
           children: <Widget>[
             Image.asset("1.png",height: 100.0,width: 1500.0,),
             Text("GOFINDAPRO",style: TextStyle(fontSize:30.0,fontWeight: FontWeight.w600),),
             SizedBox(
               height:60.0,
             ),
             //SpinKitCircle(color: Colors.white70,),
             InkWell(
               onTap: () {
                 Navigator.push(context,MaterialPageRoute(builder: (context)=>new Onboard()));
               },
               child: Padding(
                 padding: const EdgeInsets.all(15.0),
                 child: Container(
                   height: 50.0,
                   width: 600.0,
                   decoration: BoxDecoration(
                     color: Colors.black,
                     borderRadius: BorderRadius.circular(35.0),
                   ),
                   child: Center(
                       child: Text(
                         "Next",
                         style: (TextStyle(color: Colors.white, fontSize: 20.0)),
                       )),
                 ),
               ),
             ),
           ],
         ),
       ),

     );
   }
 }
