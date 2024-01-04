import 'package:flutter/material.dart';
import 'package:githubtesting/Worker_form_page.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'Login_Page.dart';
import 'App_Theam.dart';

final List<String> imgList = [
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1zmSHSnsbosHUAknj6Fk7S0zDnJBY6gQ9lw&usqp=CAU'
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHbicnqsrEETEVYFP7cOYyeI-iPMIAAkdmJG5eLVqjFYnFxs_wd_p_4gdJlVxk2vZ36qg&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkQ-7tHV32UMqwMgwmZSspQIrcALQhfLBy5AE0W6B392_SIncYOf9HVe8jRL54OjjvUiY&usqp=CAU',
  'https://www.shutterstock.com/image-vector/sympathetic-painter-dressed-work-clothes-260nw-273627476.jpg'
  'https://www.shutterstock.com/image-vector/sympathetic-painter-dressed-work-clothes-260nw-273627476.jpg'
  ];
final List<Widget> imageSliders = imgList
    .map((item) => Container(
  child: Container(
    margin: EdgeInsets.all(5.0),
    child: CircleAvatar(
      radius: 50,
       backgroundImage:NetworkImage(item),
       // borderRadius: BorderRadius.all(Radius.circular(100)),
        child: Stack(
          children: <Widget>[
           // Image.network(item,),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 20.0),

              ),

            ),
          ],
        )),
  ),
))
    .toList();


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
              const SizedBox(
                height: 50,
              ),
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
                                      color: App_Theam.Orange,
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
                              radius: 50,
                              backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7680_29xJG9TwNbrZSfspwmcpgloMBwoummzN67jJt7OTecsAOERnJ3689VRVAuomvT8&usqp=CAU"),
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
                                    "Client",                                  style: TextStyle(
                                      color: App_Theam.Orange,
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
                            height: 100,
                            child: Center(
                              child: CarouselSlider(
                                options: CarouselOptions(
                                  autoPlay: true,aspectRatio: 2.0,
                                  enlargeCenterPage: true,
                                  enlargeStrategy: CenterPageEnlargeStrategy.height,

                                ),
                                items: imageSliders,),
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


