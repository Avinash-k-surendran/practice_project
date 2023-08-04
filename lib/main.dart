import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice/Loginpage.dart';

void main(){
  runApp(const MaterialApp(debugShowCheckedModeBanner: false,home: Splashscreen(),));
}
class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<StatefulWidget> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen>{
  @override
    void initState(){
      Timer(const Duration(seconds: 7), () {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(
                builder: (
                    context)=> Loginpage()));
      });
       super.initState();
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(decoration: const BoxDecoration(image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/Images/login.jpg")
      )),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/Icons/Welcome.jpg",height: 150,width: 150,),
              Text("new project",style: GoogleFonts.roboto(fontSize: 50,color: Colors.red)),
            ],
          ),
        ),
      ),
    );

  }
}




