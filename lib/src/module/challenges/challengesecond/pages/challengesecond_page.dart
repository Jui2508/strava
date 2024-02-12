

import 'dart:ui';

import 'package:flutter/material.dart';
class ChallengeSecondPage extends StatefulWidget {
  const ChallengeSecondPage({super.key});

  @override
  State<ChallengeSecondPage> createState() => _ChallengeSecondPageState();
}

class _ChallengeSecondPageState extends State<ChallengeSecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color.fromARGB(255, 247, 23, 2),
        title: Text("Challenge")),
      body: Column(
        children: [
          Container(height:240,
            child: Stack(
              children: [
               Container(
                height:190,width:600,
                //color: Colors.amber,
                child: Image.asset("assets/images/speedomaim.webp",fit: BoxFit.cover,),
              ),Positioned(left:50,right:50,top:140,child:Image.asset("assets/images/speedo.png",height:100,width:100,))
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(top:20.0),
            child: Container(
              child: Column(
                children: [
                  Text("SPEEDO: CALL YOURSELF A",style: TextStyle(fontSize:23,fontWeight: FontWeight.w600,  decoration: TextDecoration.none),),
               Padding(
                 padding: const EdgeInsets.only(top:4.0),
                 child: Text("SWIMMER",style: TextStyle(fontSize:23,fontWeight: FontWeight.w600,  decoration: TextDecoration.none),),
               ),
               Padding(
                 padding: const EdgeInsets.only(top:5.0),
                 child: Column(
                   children: [
                     Text("Complete 25k over the next five weeks to unlock your",style: TextStyle(fontSize: 14,color: Colors.grey.shade700),),
                // RichText(text:TextSpan(children: [TextSpan(text:"NITRO",style: TextStyle(fontSize:10)),TextSpan(text:"TM",style:TextStyle(fontFeatures:[ FontFeature.superscripts()]))]))
                  Padding(
                    padding: const EdgeInsets.only(top:4.0),
                    child: Text("NITRO reward!",style: TextStyle(color: Colors.grey.shade700),),
                  )
                   ],
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.only(top:13.0),
                 child: ElevatedButton(style: ElevatedButton.styleFrom(fixedSize: Size(340,15),backgroundColor:Color.fromARGB(255, 247, 23, 2), ), onPressed: (){}, child:Text("Join Challenge",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w700),)),
               )
                ],
              ),
            ),
          )
        ],
      ),
      
    )  ;  

  }
}