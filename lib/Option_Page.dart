import 'package:flutter/material.dart';
import 'package:githubtesting/Worker_form_page.dart';
import 'Login_Page.dart';
import 'App_Theam.dart';

class Option_Page extends StatefulWidget {
  const Option_Page({super.key});

  @override
  State<Option_Page> createState() => _Option_PageState();
}

class _Option_PageState extends State<Option_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:App_Theam.Teal,
      ),
      body: SafeArea(
        child: Container(
            color:App_Theam.Teal,
          child: Column(
            children: [
              // const SizedBox(
              //   height: 100,
              // ),
              Text("Select your status and create the profile",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: App_Theam.White,),
              textAlign: TextAlign.center),
              // SizedBox(
              //   height: 100,
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                              height: 100,
                            width: 150,
                            decoration:  BoxDecoration(
                                color: App_Theam.White,
                                border: Border.all(color: App_Theam.border_color),
                                borderRadius: const BorderRadius.all(Radius.circular(10)),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black,
                                    offset: Offset(2.0, 2.0),
                                    blurRadius: 10,
                                    spreadRadius: 1.0,
                                  ),
                                  BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(-2.0, -2.0),
                                    blurRadius: 10,
                                    spreadRadius: 1.0,
                                  ),
                                ]),
                            child:  Center(
                              child: SizedBox(
                                width: 100,
                                child: Padding(
                                  padding: EdgeInsets.all(20.0),
                                  child: Text(
                                    "Client  ",                                  style: TextStyle(
                                      color: App_Theam.border_color,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(bottom: 150),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: App_Theam.border_color),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(50),
                                ),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.transparent,
                                    offset: Offset(2.0, 2.0),
                                    blurRadius: 10,
                                    spreadRadius: 1.0,
                                  ),
                                  BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(-2.0, -2.0),
                                    blurRadius: 10,
                                    spreadRadius: 1.0,
                                  ),
                                ]),
                            child: const CircleAvatar(
                              radius: 40,
                              backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-czA8HMc57FFRLnsmYEs0rTUiT4E68sAMlzYDOtg1hbfL08eO7qz0DSvxYo_nUB-iJwI&usqp=CAU"),
                            ),
                          ),
                        )
                      ],
                    ),
                    onTap: ()async{
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>  const Login_Page()));

                    },
                  ),

                  InkWell(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            //  height: 250,
                            decoration:  BoxDecoration(
                                color: App_Theam.White,
                                borderRadius: const BorderRadius.all(Radius.circular(20)),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black,
                                    offset: Offset(2.0, 2.0),
                                    blurRadius: 10,
                                    spreadRadius: 1.0,
                                  ),
                                  BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(-2.0, -2.0),
                                    blurRadius: 10,
                                    spreadRadius: 1.0,
                                  ),
                                ]),
                            child: const Center(
                              child: SizedBox(
                                width: 100,
                                child: Padding(
                                  padding: EdgeInsets.all(20.0),
                                  child: Text(
                                    "Client  ",                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 300),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: App_Theam.border_color),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(50),
                                ),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.transparent,
                                    offset: Offset(2.0, 2.0),
                                    blurRadius: 10,
                                    spreadRadius: 1.0,
                                  ),
                                  BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(-2.0, -2.0),
                                    blurRadius: 10,
                                    spreadRadius: 1.0,
                                  ),
                                ]),
                            child: const CircleAvatar(
                              radius: 50,
                              backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-czA8HMc57FFRLnsmYEs0rTUiT4E68sAMlzYDOtg1hbfL08eO7qz0DSvxYo_nUB-iJwI&usqp=CAU"),
                            ),
                          ),
                        )
                      ],
                    ),
                    onTap: ()async{
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>  const Worker_Form_Page()));
                    },
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}


