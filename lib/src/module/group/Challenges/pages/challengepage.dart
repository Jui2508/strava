import 'package:strava_clone/src/module/app/app_layout/main_layout.dart';
import 'package:strava_clone/src/module/app/bloc/app_bloc.dart';
// import 'package:strava_clone/src/module/components/profile_image/profile_image_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:strava_clone/src/module/details/pages/detail_page.dart';
import 'package:test/expect.dart';

import '../../../app/app_layout/group_layout.dart';
import '../../../components/menu/bottom_menu.dart';


class ChallengePage extends StatefulWidget {
  const ChallengePage({super.key, required this.title, this.color});
  final String title;
  final Color? color;

  @override
  State<ChallengePage> createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
  String flowerImage =
      'https://images.unsplash.com/photo-1515041219749-89347f83291a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y2FydG9vbnxlbnwwfHwwfHw%3D&w=1000&q=80';
  // String flowerImage = '';
  String StaticImagePath =
      "https://images.pexels.com/photos/60597/dahlia-red-blossom-bloom-60597.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500";

  //TO DO: Pass it from local referncd area Or Main Action component of the App
  List<Widget> getAction(BuildContext context) {
    return [
     
      Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context,'/message');
            },
            child: const Icon(Icons.message_outlined),
          )),
      Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: GestureDetector(
            onTap: () {},
            child: const Icon(Icons.search_outlined),
          )),
          Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: GestureDetector(
            onTap: () {
            Navigator.pushNamed(context,'/settingPage');
            },
            child: const Icon(Icons.settings_outlined),
          )),
    ];
  }

  @override
  Widget build(BuildContext context) {
 floatingActionButton: FloatingActionButton(backgroundColor: Color.fromARGB(255, 247, 23, 2), onPressed: (){},child: Icon(Icons.add));
    final textTheme = Theme.of(context).textTheme;
    return GroupLayout(
      //  drawer: const AppMenu(),
        bootomNavigationBar: const BottomMenu(),
        actions: getAction(context),
        body:Container(
          child: Column(
              children: [
                Container(
                  child: SingleChildScrollView(scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15,15,15,0),
                      child: Row(
                        children: [
                          Container(
                          //  color: Colors.amber,
                            width:70,height: 30,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),border: Border.all(color: Colors.grey.shade400)),
                            child: Row(
                              children: [ Image.asset("assets/images/shoes.png",height:35,width:35,),
                              Text("Run",style: TextStyle(fontSize:12),)],
                            ),
                          ),
                           Padding(
                             padding: const EdgeInsets.only(left:8),
                             child: Container(
                                           //  color: Colors.amber,
                              width:70,height: 30,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),border: Border.all(color: Colors.grey.shade400)),
                              child: Row(
                                children: [ Image.asset("assets/images/cycle.png",height:35,width:35,),
                                Text("Ride",style: TextStyle(fontSize:12),)],
                              ),
                                           ),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(left:8),
                             child: Container(
                                           //  color: Colors.amber,
                              width:70,height: 30,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),border: Border.all(color: Colors.grey.shade400)),
                              child: Row(
                                children: [ Padding(
                                  padding: const EdgeInsets.fromLTRB(7,0,5,0),
                                  child: Icon(Icons.waves_outlined,size: 13,),
                                ),
                                  //Image.asset("assets/images/shoes.png",height:35,width:35,),
                                Text("Swim",style: TextStyle(fontSize:12),)],
                              ),
                                           ),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(left:8),
                             child: Container(
                                           //  color: Colors.amber,
                              width:70,height: 30,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),border: Border.all(color: Colors.grey.shade400)),
                              child: Row(
                                children: [ Image.asset("assets/images/walkshoe.png",height:35,width:35,),
                                Text("Walk",style: TextStyle(fontSize:12),)],
                              ),
                                           ),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(left:8),
                             child: Container(
                                           //  color: Colors.amber,
                              width:70,height: 30,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),border: Border.all(color: Colors.grey.shade400)),
                              child: Row(
                                children: [ Image.asset("assets/images/hike.png",height:35,width:35,),
                                Text("Hike",style: TextStyle(fontSize:12),)],
                              ),
                                           ),
                           ),
                            Padding(
                             padding: const EdgeInsets.only(left:8),
                             child: Container(
                                           //  color: Colors.amber,
                              width:90,height: 30,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),border: Border.all(color: Colors.grey.shade400)),
                              child: Row(
                                children: [ Image.asset("assets/images/workout.png",height:35,width:35,),
                                Text("Workout",style: TextStyle(fontSize:12),)],
                              ),
                                           ),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(left:8),
                             child: Container(
                                           //  color: Colors.amber,
                              width:65,height: 30,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),border: Border.all(color: Colors.grey.shade400)),
                              child: 
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Distance",style: TextStyle(fontSize:12),),
                                )
                             )
                              
                      
                           ),
                           Padding(
                             padding: const EdgeInsets.only(left:8),
                             child: Container(
                                           //  color: Colors.amber,
                              width:100,height: 30,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),border: Border.all(color: Colors.grey.shade400)),
                             
                               child: Align(alignment: Alignment.center, child: Text("Elapsed Time",style: TextStyle(fontSize:12),))
                              
                                           ),
                           ),
                              Padding(
                             padding: const EdgeInsets.only(left:8),
                             child: Container(
                                           //  color: Colors.amber,
                              width:100,height: 30,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),border: Border.all(color: Colors.grey.shade400)),
                             
                               child: Align(alignment: Alignment.center, child: Text("Elevation Time",style: TextStyle(fontSize:12),))
                              
                                           ),
                           ),
                              Padding(
                             padding: const EdgeInsets.only(left:8),
                             child: Container(
                                           //  color: Colors.amber,
                              width:100,height: 30,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),border: Border.all(color: Colors.grey.shade400)),
                             
                               child: Align(alignment: Alignment.center, child: Text("Moving Time",style: TextStyle(fontSize:12),))
                              
                                           ),
                           ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:15.0),
                  child: SingleChildScrollView(
                    child: Container(
                      height: 200,width: 700,
                      child: Image.asset("assets/images/ski.jpg"),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15,0,0,0),
                          child: Image.asset("assets/images/55knew.png",height:45,width:45,fit: BoxFit.cover,),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15,10,0,0),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('February Nordic Skiing Challenge',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16),),
                           
                           Padding(
                             padding: const EdgeInsets.only(top:10.0),
                             child: Container(
                              child: Row(
                                children: [
                                  //Image.asset("assets/images/skiirmv.png",height: 50,width:50,),
                                Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(3,0,0,0),
                                      child: Text("Record a total of 55 km(34.2 mi) of Nordic skiing in ",style: TextStyle(fontSize: 12
                                      ),),
                                    ),
                                    Text(" a month.",style: TextStyle(fontSize: 12)),
                                    Padding(
                                      padding: const EdgeInsets.only(top:12.0),
                                      child: Text("  Feb 1 to Feb 29 ,2024",style: TextStyle(fontSize: 12),),
                                    )
                                  ],
                                )
                                ],
                              ),
                             ),
                           )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10,10,10,0),
                  child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 228, 33, 16),fixedSize: Size(330, 30)), onPressed: (){}, child: Text("Join")),
                )
              ],
            ),
        ),
        );

  }
}
