import 'package:flutter/material.dart';
import 'package:githubtesting/App_Theam.dart';
import 'package:githubtesting/Client_form_page.dart';

class Client_Home_Page extends StatefulWidget {
  const Client_Home_Page({super.key});

  @override
  State<Client_Home_Page> createState() => _Client_Home_PageState();
}

class _Client_Home_PageState extends State<Client_Home_Page> {
  var name = App_Text.username.text;
  var number = App_Text.usernumber.text;
  var address = App_Text.useraddress.text;
  var city = App_Text.usercity.text;

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
              height: 160,
              color: App_Theam.Teal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "$name",
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Text("$number")],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Text("$address,$city ")],
                      ),
                      const SizedBox(height: 15),
                    ],
                  ),
                  Column(
                    children: [
                      const CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-czA8HMc57FFRLnsmYEs0rTUiT4E68sAMlzYDOtg1hbfL08eO7qz0DSvxYo_nUB-iJwI&usqp=CAU"),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
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
                                  border:
                                      Border.all(color: App_Theam.border_color),
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
                                  ]),
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
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            //************Search field*****************
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: App_Theam.White,
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
                          ],
                          border: Border.all(color: App_Theam.border_color),
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.network(
                          "https://cdn.pixabay.com/photo/2017/01/13/01/22/magnifying-glass-1976105_1280.png"),
                    )
                  ],
                ),
                Container(
                  width: 300,
                  color: App_Theam.White,
                  child: TextField(
                    autofocus: true,
                    cursorColor: App_Theam.Teal,
                    style: const TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(
                          color: App_Theam.Orange,
                          //width: 1.5,
                        ),
                      ),

                      //********Focus border like hover******************8
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                         ),
                      hintText: "Search your work need",
                      hintStyle: TextStyle(color: App_Theam.border_color),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20,),

            SizedBox(
              height: 200,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                            color: App_Theam.White,
                            border: Border.all(color: App_Theam.Teal),
                            borderRadius: BorderRadius.circular(10),
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Vinayak",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: App_Theam.Black),),
                                Text("Plumber",style: TextStyle(fontWeight: FontWeight.bold,color: App_Theam.border_color),),
                              ],
                            ),
                            Container(
                                height: 50,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: App_Theam.Orange,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: App_Theam.Teal),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.transparent,
                                        offset: Offset(2.0, 2.0),
                                        blurRadius: 5,

                                      ),
                                      BoxShadow(
                                        color: Colors.grey,
                                        offset: Offset(-2.0, -2.0),
                                        blurRadius: 5,

                                      ),
                                    ]
                                ),

                                child: Center(child: Text("Contact"))),
                          ],
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                            color: App_Theam.White,
                            border: Border.all(color: App_Theam.Teal),
                            borderRadius: BorderRadius.circular(10),
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Vinayak",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: App_Theam.Black),),
                                Text("Plumber",style: TextStyle(fontWeight: FontWeight.bold,color: App_Theam.border_color),),
                              ],
                            ),
                            Container(
                                height: 50,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: App_Theam.Orange,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: App_Theam.Teal),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.transparent,
                                        offset: Offset(2.0, 2.0),
                                        blurRadius: 5,

                                      ),
                                      BoxShadow(
                                        color: Colors.grey,
                                        offset: Offset(-2.0, -2.0),
                                        blurRadius: 5,

                                      ),
                                    ]
                                ),

                                child: Center(child: Text("Contact"))),
                          ],
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                            color: App_Theam.White,
                            border: Border.all(color: App_Theam.Teal),
                            borderRadius: BorderRadius.circular(10),
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Vinayak",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: App_Theam.Black),),
                                Text("Plumber",style: TextStyle(fontWeight: FontWeight.bold,color: App_Theam.border_color),),
                              ],
                            ),
                            Container(
                                height: 50,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: App_Theam.Orange,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: App_Theam.Teal),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.transparent,
                                        offset: Offset(2.0, 2.0),
                                        blurRadius: 5,

                                      ),
                                      BoxShadow(
                                        color: Colors.grey,
                                        offset: Offset(-2.0, -2.0),
                                        blurRadius: 5,

                                      ),
                                    ]
                                ),

                                child: const Center(child: Text("Contact"))),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
