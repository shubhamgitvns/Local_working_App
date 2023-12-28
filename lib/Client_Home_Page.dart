import 'package:flutter/material.dart';
import 'package:githubtesting/App_Theam.dart';
import 'package:githubtesting/Client_form_page.dart';
class Client_Home_Page extends StatefulWidget {
  const Client_Home_Page({super.key});

  @override
  State<Client_Home_Page> createState() => _Client_Home_PageState();
}

class _Client_Home_PageState extends State<Client_Home_Page> {


  var name=App_Text.username.text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: App_Theam.Teal,
      ),
      body: Container(
        color: App_Theam.White,
        child: Column(
          children: [
            Container(
              height: 200,
          color: App_Theam.Teal,
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                   Column(
                    children: [
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Text("$name",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                       ],
                     ),
                      SizedBox(height: 15),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("8318465690")
                        ],
                      ),
                      SizedBox(height: 15),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("J1/112B Jaitpura, Varanasi")
                        ],
                      ),
                      SizedBox(height: 15),
                    ],
                  ),
                  Column(
                    children: [
                      const CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-czA8HMc57FFRLnsmYEs0rTUiT4E68sAMlzYDOtg1hbfL08eO7qz0DSvxYo_nUB-iJwI&usqp=CAU"),

                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        InkWell(
                          child: Container(
                           height: 30,
                            width: 100,

                            decoration: BoxDecoration(
                              color: App_Theam.Orange,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: App_Theam.border_color),
                              boxShadow: [
                            const BoxShadow(
                            color: Colors.transparent,
                              offset: Offset(2.0, 2.0),
                              blurRadius: 10,
                              spreadRadius: 1.0,
                            ),
                            BoxShadow(
                              color: App_Theam.bgcolor,
                              offset: Offset(-2.0, -2.0),
                              blurRadius: 10,
                              spreadRadius: 1.0,
                            ),
                            ]
                            ),
                            child: const Center(child: Text("Edit Profile")),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                    const Client_form_Page()));

                          },
                        )
                      ],)
                    ],
                  ),
                ],
              ),
              ),

          ],
        ),
      ),
    );
  }
}
