import 'package:flutter/material.dart';
import 'package:practice/newpage.dart';



class Registration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title:Center(child: Text("Registration"),
    )
    ),
      body: Column(
        children: [
              Image.asset("assets/Icons/Netflix..png",height: 100,width: 100,),
          Text('NETFLIX',style: TextStyle(fontSize: 20),),
          const Padding(
              padding: EdgeInsets.all(12.0),
                  child: TextField(
                    decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                      hintText: "Name",
                      helperText: "Starts with capital letter",
                      labelText: "Name of the person"
                    ),
                  )
          ),

          const Padding(
              padding: EdgeInsets.all(12.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    hintText: "********@gmail.com",
                    helperText: "Starts with small letter",
                    labelText: "E-Mail"
                ),
              )
          ),
          const Padding(
              padding: EdgeInsets.all(12.0),
              child: TextField(
                obscuringCharacter: "*",
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    hintText: "password",
                    helperText: "Must have 6 characters",
                    labelText: "Password"
                ),
              )
          ),
          const Padding(
              padding: EdgeInsets.all(12.0),
              child: TextField(
                obscuringCharacter: "*",
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    hintText: "Confirm password",
                    helperText: "same as password",
                    labelText: "Confirm password",
                ),
              )
          ),

    ElevatedButton(onPressed: (){}, child: const Text('Confirm',style: TextStyle(fontSize: 15),)),





],
      ),

    );

  }
}
