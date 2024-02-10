import "package:flutter/material.dart";
import 'package:carousel_slider/carousel_slider.dart';



import '../../details/detail.dart';class WelcomePage extends StatefulWidget {
  final String? title;
  const WelcomePage({super.key, this.title});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
child: Stack(
  children: [
    Container(
      height: 1000,
      // child: ListView(
      //   children: [
      //     CarouselSlider(
      //       items:[
              //  Container(
              //         decoration: BoxDecoration(
              //           borderRadius: BorderRadius.circular(8.0),
              //           image: const DecorationImage(
              //             image: NetworkImage(
                          
              //                 "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUQ8JIqnYpK5su7KrsQT1ycalF8lMxNIuZ3nZNC26HUykToY1tqI6srbwr0TrkaWlJUB0&usqp=CAU",),
              //             alignment: Alignment.center,
              //             fit: BoxFit.cover,
                          
              //           ),
              //         ),
                     
              //  ),
               
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        
                      
                  
               ),
               child: Image.asset("assets/images/wel.jpg",fit: BoxFit.cover,),
    ),
               
              
          

  // options: CarouselOptions(
  //                   height:1000,
                   
  //                   enlargeCenterPage: true,
  //                   autoPlay: true,
  //                   aspectRatio: 4 / 3,
  //                   autoPlayCurve: Curves.fastOutSlowIn,
  //                   enableInfiniteScroll: true,
  //                   autoPlayAnimationDuration:
  //                       const Duration(milliseconds:800),
  //                   viewportFraction: 1,

                     
                  
  //                 ),
  //               ),
                

            
      
    Positioned(top:520,left:20,child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0,10,3100,0),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
              " Welcome,${namec.value.text}!",style:TextStyle(decoration: TextDecoration.none,color: Color.fromARGB(255, 183, 170, 170),fontSize:25,fontWeight: FontWeight.bold),
                       // decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey ),
                        //color: Colors.white,
                                         
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15,15,0,10),
                child: Text("You are ready to go.start uploading\nactivities,compete with friends,Build \nyour community and most importantly\nHave fun !",style: TextStyle(decoration: TextDecoration.none,fontSize: 14,color: Color.fromARGB(255, 201, 171, 171)),),
              ),
              Padding(
                padding: const EdgeInsets.only(left:10.0),
                child: ElevatedButton(style: ElevatedButton.styleFrom(fixedSize: Size(320,45),backgroundColor:Color.fromARGB(255, 228, 33, 16), ), onPressed: (){
                  Navigator.pushNamed(context,'/home_screen');
                }, child: Text("Get Started")),
              )
            ],
          ),
        ),

  // Padding(
  //   padding: const EdgeInsets.fromLTRB(0,10,2500,0),
  //   child: Column(
  //     children: [
  //       Padding(
  //         padding: const EdgeInsets.fromLTRB(0,10,400,10),
  //         child: SizedBox(
  //           width: 400,
  //           child: Card( color: Colors.black.withOpacity(0.5),
  //             child: Padding(
  //               padding: const EdgeInsets.all(10.0),
  //               child: Text("You are ready to go.start uploading\nactivities,compete with friends,Build your\ncommunity and most importantly\nHave fun",style:TextStyle(decoration: TextDecoration.none,color: Colors.white,fontSize: 18,fontWeight: FontWeight.w300),),
  //             )),
  //         ),
  //       ),
  //      Center(
  //    child: Padding(
  //      padding: const EdgeInsets.fromLTRB(0,0,300,0),
  //      child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.orange.shade900,), onPressed: (){
  //       Navigator.pushNamed(context,'/home_screen');
  //      }, child:Padding(
  //        padding: const EdgeInsets.all(8.0),
  //        child: Text("Get Started"),
  //      )),
  //    ),
  //  )
  //     ],
  //   ),
  // ),

  
      ],
    ))  ],
                      )
          // ElevatedButton(style: ElevatedButton.styleFrom(fixedSize:Size(40,20),), onPressed: (){}, child: Text("Log in using Google"))
                      
 );
  
  }
}