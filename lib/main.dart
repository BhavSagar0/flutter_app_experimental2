import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(title: "myapp", home: HomePage()));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    var screen_Width = MediaQuery.of(context).size.width;
    var screen_Height = MediaQuery.of(context).size.height;
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
            body: Container(
      color: Color.fromRGBO(255, 255, 255, 1.0),
                child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
                  Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          gradient: LinearGradient(
                              begin: Alignment.topCenter, end: Alignment.bottomCenter,
                              // stops: [0.5,1],
                              colors: [Colors.blue, Colors.white])),
                      padding: EdgeInsets.only(
                          top: (screen_Width) / 25,
                      //    bottom: (MediaQuery.of(context).size.width) / 20
                      ),
                      child: Image.asset('Assets/images/sjaaalogo.png',
                          width: (screen_Width),
                          height:
                              (screen_Height) / 5)), //logocontainer
                  Container(
                      constraints: BoxConstraints(
                          minWidth: double.maxFinite,
                          minHeight: (screen_Height) / 2.6,
                          maxWidth: double.maxFinite,
                          maxHeight: (screen_Height) / 2.6),
                      child: Image.asset('Assets/images/pic_fram_45.png',
                          fit: BoxFit.fill,
                          width: screen_Width,
                          height: (screen_Height) / 3)),
                  Container(
                    child:
                        Text(
                            "Are you an\nexisting member?",
                            textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 35.0,
                          fontWeight: FontWeight.bold
                          ),
                        ),
                  ),
                  
                  Expanded(
                    child: Container(
                      child:
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                                RaisedButton(
                                  onPressed: test_function,
                                color: Colors.red,
                                  child:
                                  Text(
                                      "Yes",
                                    style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                    ),




                                ),
                              ),
                              RaisedButton(
                                onPressed: test_function,
                                color: Colors.red,
                                child:
                                Text(
                                  "No",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
                                  ),

                                ),


                              )



                            ],

                      ),




                    ),
                  )
                ]),
              )));
            }
          }


  Widget test_function()
  {
    return Center(
        child :
        Text("Good Work!")

    );

  }
