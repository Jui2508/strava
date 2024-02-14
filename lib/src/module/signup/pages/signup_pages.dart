import "package:flutter/material.dart";
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import 'package:strava_clone/src/module/details/pages/detail_page.dart';
import 'package:isar/isar.dart';

import '../../../database/note.dart';
import '../../../database/note_database.dart';
import 'dart:core';
//import 'package:note_database'
//import 'package:strava_setting/src/database/note_database.dart';
FocusNode FocusNodeFirstName = new FocusNode();
FocusNode FocusNodePassword = new FocusNode();
TextEditingController passc = TextEditingController();

//TextEditingController usernamec=TextEditingController();
//import 'package:stravaapplication/routes.dart';
//https://media.istockphoto.com/id/1262293243/photo/d.jpg?s=612x612&w=0&k=20&c=HfhtRWYeR49mVmALB1zCzgOhY3YZ9ndnRnIb02CpvB8=
class MySignUp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyFormState();
  }
}

class MyFormState extends State<MySignUp> {
  var _MyFormkey = GlobalKey<FormState>();
  moveToNext(BuildContext context) async {
    final form = _MyFormkey.currentState;
    if (form != null && form.validate()) {
      {
        await Future.delayed(const Duration(seconds: 1));
                                        context
                                          .read<NoteDatabase>()
                                          .addNote(namec.text, passc.text);
        Navigator.pushNamed(context, '/detail');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    //  final noteDatabase=context.watch<NoteDatabase>();
    // List <Note> currentNotes=noteDatabase.currentNotes;
    // return ChangeNotifierProvider<NoteDatabase>
    return Scaffold(
        body: Form(
      key: _MyFormkey,
      child: Container(
          height: 900,
          width: 800,
          child: Stack(children: [
            Container(
                child: ListView(children: [
              CarouselSlider(
                items: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.black.withOpacity(0.3),
                      image: const DecorationImage(
                        image: NetworkImage(
                          "https://images.unsplash.com/photo-1541625602330-2277a4c46182?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8Y3ljbGluZ3xlbnwwfHwwfHx8MA%3D%3D",
                        ),
                        alignment: Alignment.center,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: const DecorationImage(
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1541625810516-44f1ce894bcd?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fGN5Y2xpbmd8ZW58MHx8MHx8fDA%3D"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: const DecorationImage(
                        image: NetworkImage(
                            "https://media.istockphoto.com/id/1262293243/photo/d.jpg?s=612x612&w=0&k=20&c=HfhtRWYeR49mVmALB1zCzgOhY3YZ9ndnRnIb02CpvB8="),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
                options: CarouselOptions(
                  height: 900,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 4 / 3,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: const Duration(milliseconds: 400),
                  viewportFraction: 1,
                ),
              ),
            ])),
            Positioned(
                left: 50,
                right: 50,
                top: 150,
                child: SingleChildScrollView(
                    child: Container(
                        //          // decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey ),
                        color: Colors.black.withOpacity(0.4),
                        height: MediaQuery.of(context).size.height*0.64,
                        //height: 470,
                        width: 100,
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: SizedBox(
                                height: 40,
                                width: 500,
                                child: Card(
                                  child: Center(
                                      child: InkWell(
                                    onTap: () {},
                                    child: Row(
                                      children: [
                                        Image.asset("assets/images/google.png"),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              19, 0, 0, 0),
                                          child: Text(
                                            "sign up using Google",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                              width: 400,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                child: Card(
                                  color: Color.fromARGB(255, 71, 131, 244),
                                  child: Center(
                                      child: InkWell(
                                    onTap: () {},
                                    child: Row(
                                      children: [
                                        Image.asset(
                                            "assets/images/facebook.png",
                                            height: 20,
                                            width: 35),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              20, 0, 0, 0),
                                          child: Text(
                                            "Sign Up using Facebook",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Divider(
                                            color: Colors.black, thickness: 3)
                                      ],
                                    ),
                                  )),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                controller: namec,
                                validator: (String? name) {
                                  if (name!.isEmpty) {
                                    return "Please Enter name";
                                  }
                                  return null;
                                },
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  focusedErrorBorder: OutlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(255, 164, 3, 3)),),
                                 errorBorder:OutlineInputBorder(borderRadius: BorderRadius.circular(1), borderSide: BorderSide(color:Color.fromARGB(255, 164, 3, 3))),
                                  errorStyle: TextStyle(color: Color.fromARGB(255, 164, 3, 3)),
                                  fillColor: Colors.white,
                                  //filled: true,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(1)),
                                  hintText: "  Enter Username",
                                  hintStyle: TextStyle(color: Colors.white),
                                  labelText: "  Username",
                                  labelStyle: TextStyle(
                                      color: FocusNodeFirstName.hasFocus
                                          ? Colors.blue
                                          : Colors.grey.shade200),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey)),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                obscureText: true,
                                controller: passc,
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(//
                                 focusedErrorBorder: OutlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(255, 164, 3, 3)),),
                                 errorBorder:OutlineInputBorder(borderRadius: BorderRadius.circular(1), borderSide: BorderSide(color:Color.fromARGB(255, 164, 3, 3))),
                                  errorStyle: TextStyle(color: Color.fromARGB(255, 164, 3, 3)),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(1)),
                                  hintText: "  Enter Password",
                                  hintStyle: TextStyle(color: Colors.white),
                                  labelText: "  Password",
                                  labelStyle: TextStyle(
                                      color: FocusNodePassword.hasFocus
                                          ? Colors.blue
                                          : Colors.grey.shade200),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey)),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                obscureText: true,
                                validator: (String? msg) {
                                  if (msg!= passc.text) {
                                    return "Password is not same as above";
                                  }
                                  return null;
                                },
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                   focusedErrorBorder: OutlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(255, 164, 3, 3)),),
                                 errorBorder:OutlineInputBorder(borderRadius: BorderRadius.circular(1), borderSide: BorderSide(color:Color.fromARGB(255, 164, 3, 3))),
                                  errorStyle: TextStyle(color: Color.fromARGB(255, 164, 3, 3)),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(1)),
                                  hintText: "  Confirm Password",
                                  hintStyle: TextStyle(color: Colors.white),
                                  labelText: " Confirm Password",
                                  labelStyle: TextStyle(
                                      color: FocusNodeFirstName.hasFocus
                                          ? Colors.blue
                                          : Colors.grey.shade200),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey)),
                                ),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: SizedBox(
                                width: 500,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            Colors.orange.shade900),
                                    onPressed: () {
                                      // addNote(namec.text);
                                      //createNote();
                                      //NoteDatabase.addNote();
                                     
                                      moveToNext(context);
                                     
                                    },
                                    child: Text("Sign Up")),
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 35.0),
                                  child: Text(
                                    "Already Member ?",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 246, 242, 231)),
                                  ),
                                ),
                                TextButton(
                                    onPressed: () {
                                      context.read<NoteDatabase>().fetchNote();
                                      Navigator.pushNamed(context, '/note');
                                    },
                                    child: Text(
                                      "Login",
                                      style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          color: Colors.blue.shade100,
                                          fontSize: 16),
                                    ))
                              ],
                            )

                            //                           ],
                            //                         ),
                            //                       ),
                            //                     ),
                            //                   ),
                            //                 ),
                          ],
                        )
                        // ElevatedButton(style: ElevatedButton.styleFrom(fixedSize:Size(40,20),), onPressed: (){}, child: Text("Log in using Google"))

                        )))
          ])),
    ));
  }

  // void addnote(){
  //   context.read<NoteDatabase>().addNote(usernamec.text);
  // }
//  void createNote(){
//   //  showDialog(context:context, builder: ((context)=>AlertDialog(content: TextField(controller: usernamec),
//   //  actions: [
// TextFormField(controller: usernamec,);
//     ElevatedButton(onPressed: (){
//       context.read<NoteDatabase>().addNote(usernamec.text);
//       usernamec.clear();
//       Navigator.pop(context);
//      }
//       ,child: Text("signup"),);

// }
// Future<void>addNote(String textFromUser) async{
//   final newNote=Note()..text=textFromUser;
//   await isar.writeTxn(() async{ await isar.notes.put(newNote);});
//  // fetchNote();
// }
//     void readNotes(){
//     context.read<NoteDatabase>().fetchNote();
//   }
// }}
}
