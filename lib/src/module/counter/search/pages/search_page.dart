import 'package:strava_clone/src/module/app/app_layout/main_layout.dart';
import 'package:strava_clone/src/module/app/app_layout/search_layout.dart';
import 'package:strava_clone/src/module/app/bloc/app_bloc.dart';
// import 'package:strava_clone/src/module/components/profile_image/profile_image_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:strava_clone/src/module/details/pages/detail_page.dart';
import 'package:test/expect.dart';

//import '../../../app/app_layout/group_layout.dart';
//import '../../../components/menu/bottom_menu.dart';


class SearchPage extends StatefulWidget {
  const SearchPage({super.key, required this.title, this.color});
  final String title;
  final Color? color;

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  String flowerImage =
      'https://images.unsplash.com/photo-1515041219749-89347f83291a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y2FydG9vbnxlbnwwfHwwfHw%3D&w=1000&q=80';
  // String flowerImage = '';
  String StaticImagePath =
      "https://images.pexels.com/photos/60597/dahlia-red-blossom-bloom-60597.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500";

  //TO DO: Pass it from local referncd area Or Main Action component of the App
  
  @override
  Widget build(BuildContext context) {
 floatingActionButton: FloatingActionButton(backgroundColor: Color.fromARGB(255, 247, 23, 2), onPressed: (){},child: Icon(Icons.add));
    final textTheme = Theme.of(context).textTheme;
    return SearchLayout(
    
       
        body: SingleChildScrollView(
         ));

  }
}
