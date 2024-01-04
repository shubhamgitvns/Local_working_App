import 'package:flutter/material.dart';
import 'package:githubtesting/Worker_home_page.dart';

import 'App_Theam.dart';

class Worker_Form_Page extends StatefulWidget {
  const Worker_Form_Page({super.key});

  @override
  State<Worker_Form_Page> createState() => _Worker_Form_PageState();
}

class _Worker_Form_PageState extends State<Worker_Form_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: App_Theam.White,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 800,
          color: App_Theam.White,
          child: Column(
            children: [
              const SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: App_Theam.border_color),
                    //borderRadius: BorderRadius.circular(10),
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
                    ]
                ),
                child: Image.network("https://as2.ftcdn.net/v2/jpg/02/46/90/55/1000_F_246905521_0tQkz7nAGCLhHfr2b9PT9Yr425kVDhD4.jpg",height: 150,),
                // child: const CircleAvatar(
                //   radius: 80,
                //   backgroundImage: NetworkImage("https://as2.ftcdn.net/v2/jpg/02/46/90/55/1000_F_246905521_0tQkz7nAGCLhHfr2b9PT9Yr425kVDhD4.jpg"),
                //
                // ),
              ),
              const SizedBox(
                height: 10,
              ),
              //*************Text form code start******************
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 300,
                    child: TextField(
                      autofocus: true,
                      controller: App_Text.workername,
                      style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                            color: App_Theam.Teal,
                            width: 1.5,
                          ),
                        ),

                        //********Focus border like hover******************8
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: App_Theam.border_color,
                            )),
                        prefix: Icon(
                          Icons.person,
                          color: App_Theam.Orange,

                        ),
                        labelText: "Name",
                        labelStyle: TextStyle(color: App_Theam.Teal),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 20,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 300,
                    child: TextField(
                      autofocus: true,
                      controller: App_Text.workernumber,

                      style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: App_Theam.Teal,
                              width: 1.5,
                            ),
                          ),

                          //********Focus border like hover******************8
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                color: App_Theam.border_color,

                              )),
                          prefix: Icon(
                            Icons.phone,
                            color: App_Theam.Orange,
                          ),
                          labelText: "Number",
                          labelStyle: TextStyle(color: App_Theam.Teal)
                      ),
                      keyboardType: TextInputType.phone,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 300,
                    child: TextField(
                      autofocus: true,
                      controller: App_Text.workeraddress,

                      style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                            color: App_Theam.Teal,
                            width: 1.5,
                          ),
                        ),

                        //********Focus border like hover******************8
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: App_Theam.border_color,

                            )),
                        prefix: Icon(
                          Icons.sell_rounded,
                          color: App_Theam.Orange,
                        ),
                        labelText: "Work Profession",
                        labelStyle: TextStyle(color: App_Theam.Teal),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 20,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 300,
                    child: TextField(
                      autofocus: true,
                      controller: App_Text.workeprofession,

                      style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                            color: App_Theam.Teal,
                            width: 1.5,
                          ),
                        ),

                        //********Focus border like hover******************8
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: App_Theam.border_color,

                            )),
                        prefix: Icon(
                          Icons.home,
                          color: App_Theam.Orange,
                        ),
                        labelText: "Address",
                        labelStyle: TextStyle(color: App_Theam.Teal),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 20,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 300,
                    child: TextField(
                      autofocus: true,
                      controller: App_Text.workercity,

                      style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                            color: App_Theam.Teal,
                            width: 1.5,
                          ),
                        ),

                        //********Focus border like hover******************8
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: App_Theam.border_color,

                            )),
                        prefix: Icon(
                          Icons.location_city,
                          color: App_Theam.Orange,
                        ),
                        labelText: "City",
                        labelStyle: TextStyle(color: App_Theam.Teal),

                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 300,
                    child: TextField(
                      autofocus: true,
                      controller: App_Text.workerpin,
                      style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                            color: App_Theam.Teal,
                            width: 1.5,
                          ),


                        ),

                        //********Focus border like hover******************8
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: App_Theam.border_color,

                            )
                        ),
                        prefix: Icon(Icons.pin,color: App_Theam.Orange,),
                        labelText: "Pin",
                        labelStyle: TextStyle(color: App_Theam.Teal),

                      ),
                      keyboardType: TextInputType.phone,

                    ),
                  ),

                ],
              ),



              const SizedBox(
                height: 50,
              ),
              //********Button**************
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: InkWell(
                      child: Container(
                        width: 300,
                        height: 50,
                        decoration: BoxDecoration(
                            color: App_Theam.button_color,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              const BoxShadow(
                                color: Colors.transparent,
                                offset: Offset(2.0, 2.0),
                                blurRadius: 10,
                                spreadRadius: 1.0,
                              ),
                              BoxShadow(
                                color: App_Theam.border_color,
                                offset: Offset(-2.0, -2.0),
                                blurRadius: 10,
                                spreadRadius: 1.0,
                              ),
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Continue",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: App_Theam.White),
                            )
                          ],
                        ),
                      ),
                      onTap: () async {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                const Worker_Home_Page()));
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
