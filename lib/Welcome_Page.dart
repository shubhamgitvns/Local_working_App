import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:swipebuttonflutter/swipebuttonflutter.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FlipCard',
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  _renderBg() {
    return Container(
      decoration: BoxDecoration(color: const Color(0xFFFFFFFF)),
    );
  }

  _renderContent(context) {
    return Card(
      elevation: 0.0,
      margin: EdgeInsets.only(left: 32.0, right: 32.0, top: 20.0, bottom: 0.0),
      color: Color(0x00000000),
      child: FlipCard(
        direction: FlipDirection.VERTICAL,
        side: CardSide.FRONT,
        speed: 1000,
        onFlipDone: (status) {
          print(status);
        },
        front: Container(
          decoration: const BoxDecoration(
            color: Color(0xFF006666),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('CUSTOMER',
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
              Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    height: 400,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      height: 250,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
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
                          width: 300,
                          child: Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Text(
                              "What does Client mean? The person(s) on whose behalf the firm is providing a service. In terms of conduct, duties are owed to clients of the firm and this may sometimes include former and prospective clients. A client is not necessarily the same person as the individual paying for the legal services.",
                              style: TextStyle(
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
                          border: Border.all(color: Colors.lightBlue),
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
                        backgroundColor: Colors.teal,
                         backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-czA8HMc57FFRLnsmYEs0rTUiT4E68sAMlzYDOtg1hbfL08eO7qz0DSvxYo_nUB-iJwI&usqp=CAU"),
                      ),
                    ),
                  )
                ],
              ),
              Text('Click here to flip back',
                  style: Theme.of(context).textTheme.bodyText1),
            ],
          ),
        ),
        // *************** Back code***************************
        back: Container(
          decoration: const BoxDecoration(
            color: Color(0xFF006666),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('PLUMBER', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 50)),

              Stack(
                alignment: Alignment.center,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          height: 250,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              boxShadow: [
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
                              width: 300,
                              child: Padding(
                                padding: EdgeInsets.all(20.0),
                                child: Text(
                                  "What does Client mean? The person(s) on whose behalf the firm is providing a service. In terms of conduct, duties are owed to clients of the firm and this may sometimes include former and prospective clients. A client is not necessarily the same person as the individual paying for the legal services.",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ),

                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 300),
                    child: Container(
                      color: const Color(0xFF006666),

                      child: const Padding(
                        padding: EdgeInsets.only(left: 10,right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 40,
                              backgroundColor: Colors.lightBlue,
                               backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqtymxY5jg1_6tOOMGlfGMH6ZHnR9p9BhYfQ&usqp=CAU"),
                            ),
                            CircleAvatar(
                              radius: 40,
                              backgroundColor: Colors.teal,
                              backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqtymxY5jg1_6tOOMGlfGMH6ZHnR9p9BhYfQ&usqp=CAU"),
                            ),
                            CircleAvatar(
                              radius: 40,
                              backgroundColor: Colors.teal,
                              backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqtymxY5jg1_6tOOMGlfGMH6ZHnR9p9BhYfQ&usqp=CAU"),
                            ),

                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),

              Text('Click here to flip back',
                  style: Theme.of(context).textTheme.bodyText1),
            ],
          ),
        ),
      ),
    );
  }

  _renderSwipinButton(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SwipingButton(
          iconColor: Colors.white,
          padding: const EdgeInsets.only(left: 20),
          swipeButtonColor: Colors.lightBlue.shade400,
          backgroundColor: Colors.grey.shade300,
          text: 'Swipe right to start',
          onSwipeCallback: () async {
            //Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen(),));
          },
          buttonTextStyle: const TextStyle(
              color: Colors.white,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w400),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          _renderBg(),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  flex: 4,
                  child: _renderContent(context),
                ),
                Expanded(
                  flex: 1,
                  child: _renderSwipinButton(context),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
