import 'package:flutter/material.dart';

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
              const SizedBox(
                height: 100,
              ),
              Text("Select your status and create the profile",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: App_Theam.White,),
              textAlign: TextAlign.center),
              SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: App_Theam.border_color),
                      color: App_Theam.White,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(2.0, 2.0),
                            blurRadius: 10,
                            spreadRadius: 1.0,
                          ),
                          BoxShadow(
                            color: Colors.black,
                            offset: Offset(-2.0, -2.0),
                            blurRadius: 10,
                            spreadRadius: 1.0,
                          ),
                        ]
                    ),


                    child: Column(
                      children: [

                        Row(
                         // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7680_29xJG9TwNbrZSfspwmcpgloMBwoummzN67jJt7OTecsAOERnJ3689VRVAuomvT8&usqp=CAU",height: 150,width: 145,)
                          ],
                        ),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Client",style: TextStyle(
                              fontSize: 25,
                              color: App_Theam.border_color,
                              fontWeight: FontWeight.bold
                            ),)
                          ],
                        )

                      ],
                    ),
                  ),

                  InkWell(
                    child: Container(
                      height: 200,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: App_Theam.border_color),
                          color: App_Theam.White,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(2.0, 2.0),
                              blurRadius: 10,
                              spreadRadius: 1.0,
                            ),
                            BoxShadow(
                              color: Colors.black,
                              offset: Offset(-2.0, -2.0),
                              blurRadius: 10,
                              spreadRadius: 1.0,
                            ),
                          ]
                      ),


                      child: Column(
                        children: [

                          Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.network("https://img.freepik.com/free-vector/group-construction-workers-cartoon-characters_1308-90754.jpg",height: 150,width: 130,)
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Worker",style: TextStyle(
                                  fontSize: 25,
                                  color: App_Theam.border_color,
                                  fontWeight: FontWeight.bold
                              ),)
                            ],
                          )

                        ],
                      ),

                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/');

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


