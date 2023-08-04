import 'package:flutter/material.dart';
import 'Registration page.dart';
import 'home page.dart';

class Loginpage extends StatelessWidget {
String Username= "avinash";
String Password= "asd123";

final Uname= TextEditingController();
final Pass= TextEditingController();

    @override
  Widget build(BuildContext context) {
return Scaffold(
  appBar: AppBar(backgroundColor: Colors.purpleAccent,
    title: const Center( child: Text('welcome to our page',)
  ),
  ),
  body: Column(
      children: [
      Image.asset("assets/Icons/Welcome.jpg", height: 100, width: 100),
  const Text('welcome',style: TextStyle(fontSize: 25),),
  Padding(
    padding: const EdgeInsets.all(12.0),
    child: TextField(
      controller: Uname,
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30)),
          hintText: 'UserName',
          helperText: 'Username must be an email',
          labelText: 'UserName',
          prefixIcon: const Icon(Icons.person)),
    ),
  ),
  Padding(
    padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
    child: TextField(
      controller: Pass,
      obscureText: true,
      obscuringCharacter: '*',
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30)),
          hintText: 'Password',
          helperText: 'password must contain 6 characters',
          labelText: 'PassWord',
          prefixIcon: const Icon(Icons.visibility_off_sharp),
          suffixIcon: const Icon(Icons.visibility)),
    ),
  ),
        ElevatedButton(
            onPressed: () {
              if (Uname.text != "" && Pass.text != "") {
                if (Uname.text == Username && Pass.text == Password) {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Homescreen()));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("Email/Password is Incorrect"),
                    backgroundColor: Colors.red,));
                }
              } else {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text("Fields Must not be empty"),
                  backgroundColor: Colors.red,));
              }
            },

            child: const Text("Login")),
        TextButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>Registration()));
            },
            child: const Text("Not a User!!!!!! Register Here..."))
      ],
  ),
);
    }
}

