import 'package:flutter/material.dart';
import 'package:githubtesting/App_Theam.dart';

class Client_form_Page extends StatefulWidget {
  const Client_form_Page({super.key});

  @override
  State<Client_form_Page> createState() => _Client_form_PageState();
}

class _Client_form_PageState extends State<Client_form_Page> {
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
              SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: App_Theam.border_color),
                  borderRadius: BorderRadius.circular(100),
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
            ]
                ),
                child: const CircleAvatar(
                  radius: 80,
                  backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-czA8HMc57FFRLnsmYEs0rTUiT4E68sAMlzYDOtg1hbfL08eO7qz0DSvxYo_nUB-iJwI&usqp=CAU"),

                ),
              ),
              SizedBox(
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
                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
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
                          color: App_Theam.Teal,

                        ),
                        labelText: "Name",
                        labelStyle: TextStyle(color: App_Theam.Teal),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 20,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 300,
                    child: TextField(
                      autofocus: true,
                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
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
                          color: App_Theam.Teal,
                        ),
                        labelText: "number",
                        labelStyle: TextStyle(color: App_Theam.Teal)
                      ),
                      keyboardType: TextInputType.phone,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 300,
                    child: TextField(
                      autofocus: true,
                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
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
                          color: App_Theam.Teal,
                        ),
                        labelText: "Address",
                        labelStyle: TextStyle(color: App_Theam.Teal),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 20,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 300,
                    child: TextField(
                      autofocus: true,
                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
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
                          color: App_Theam.Teal,
                        ),
                        labelText: "Location",
                        labelStyle: TextStyle(color: App_Theam.Teal),

                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 300,
                    child: TextField(
                      autofocus: true,
                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
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
                        prefix: Icon(Icons.pin,color: App_Theam.Teal,),
                        labelText: "Pin",
                        labelStyle: TextStyle(color: App_Theam.Teal),

                      ),
                      keyboardType: TextInputType.phone,

                    ),
                  ),

                ],
              ),



              SizedBox(
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
                                    const Client_form_Page()));
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
