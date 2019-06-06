import 'package:flutter/material.dart';
void main(){
  runApp(Bookcar());
}
class Bookcar extends StatefulWidget {
  @override
  _BookcarState createState() => _BookcarState();
}

class _BookcarState extends State<Bookcar> {

  bool _showpass =false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
          constraints: BoxConstraints.expand(),
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 16),
                child: Container(
                    width: 70,
                    height: 70,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey
                    ),
                    child: FlutterLogo()),
              ),
              
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 16),
                child: Text("Hello\nWellcome Back",
                style: TextStyle(fontSize: 24,color: Colors.black,fontWeight: FontWeight.bold),),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 16),
                child: TextField(
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(labelText: "Username",labelStyle: TextStyle(color: Colors.grey,fontSize: 20)),
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 40),
                child: Stack(
                  alignment: AlignmentDirectional.centerEnd,
                  children: <Widget>[
                    TextField(
                      style: TextStyle(color: Colors.black),
                      obscureText: true,
                      decoration: InputDecoration(labelText: "Password",labelStyle: TextStyle(color: Colors.grey,fontSize: 20)),
                    ),
                    GestureDetector( // bắt sự kiện click vào text
                      onTap: onvisilitypassword,
                        child: Text("show",

                          style: TextStyle(color: Colors.blue,fontSize: 12,fontWeight: FontWeight.bold),))
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 16),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: RaisedButton(onPressed: onSignclick,
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                    child: Text("SIGN IN", style: TextStyle(color: Colors.white),),
                  ),
                ),
              )
              
            ],
          ),
        ),

      ),


    );
  }

  void onvisilitypassword(){
    _showpass = true;
  }

  void onSignclick(){}
}
