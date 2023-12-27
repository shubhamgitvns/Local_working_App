import 'package:flutter/material.dart';
import 'package:githubtesting/App_Theam.dart';

import 'Client_form_page.dart';

class Login_Page extends StatefulWidget {
  const Login_Page({super.key});

  @override
  State<Login_Page> createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: App_Theam.Teal,
      ),
      body: SafeArea(
        child: Container(
          color: App_Theam.White,
          child: Column(
            children: [
              Container(
                child: Stack(
                  children: [
                    Container(
                      child: Container(
                        height: 350,
                        decoration: BoxDecoration(
                            color: App_Theam.Teal,
                            borderRadius: const BorderRadius.only(
                                bottomRight: Radius.circular(75),
                                bottomLeft: Radius.circular(75))),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Container(
                                  height: 130,
                                  child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOts1yXAKjGzNMxvmq6Tz2NgHxf7gz4ZLaDXcDJIyuK6d_6ux07MGAreMQ7cT0V7NC1lQ&usqp=CAU")),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: const
                                Text(
                                  "Welcome",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 200),
                      child: Center(
                        child: Container(
                          height: 230,
                          width: 300,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              //border: Border.all(color: Colors.orange),
                              borderRadius: BorderRadius.circular(15),
                              boxShadow:  [
                                BoxShadow(
                                  color: App_Theam.White,
                                  offset: Offset(2.0, 2.0),
                                  blurRadius: 10,
                                  spreadRadius: 1.0,
                                ),
                                BoxShadow(
                                  color: App_Theam.Teal,
                                  offset: Offset(-2.0, -2.0),
                                  blurRadius: 10,
                                  spreadRadius: 1.0,
                                ),
                              ]),
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                 Row(mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Get Started",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                      color: App_Theam.border_color),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                  Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                        width: 200,
                                        child: TextField(
                                          autofocus: true,
                                          decoration: InputDecoration(
                                            labelText: "*Email",
                                            labelStyle:TextStyle(color: App_Theam.Teal)

                                          ),
                                          keyboardType: TextInputType.emailAddress,
                                        ),
                                    )
                                  ],
                                ),

                                 Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 200,
                                      child: TextField(
                                        autofocus: true,
                                        decoration: InputDecoration(
                                          labelText: "*Phone",
                                          labelStyle: TextStyle(color: App_Theam.Teal)

                                        ),
                                        keyboardType: TextInputType.number,
                                      ),
                                    )
                                  ],
                                ),

                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),

              Expanded(
                child: Center(
                  child: InkWell(
                    child: Container(
                      width: 150,
                      height: 50,
                      decoration: BoxDecoration(
                        color: App_Theam.button_color,
                          borderRadius: BorderRadius.circular(20),
                        boxShadow:  [
                          const BoxShadow(
                            color: Colors.transparent,
                            offset: Offset(2.0, 2.0),
                            blurRadius: 10,
                            spreadRadius: 1.0,
                          ),
                          BoxShadow(
                            color:App_Theam.border_color,
                            offset: Offset(-2.0, -2.0),
                            blurRadius: 10,
                            spreadRadius: 1.0,
                          ),
                        ]
                      ),
                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Login",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: App_Theam.White),)
                        ],
                      ),
                    ),
                    onTap: ()async{
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>  const Client_form_Page()));

                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
