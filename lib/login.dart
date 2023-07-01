import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 30,),
                Text("Login",style: TextStyle(color: Colors.black,fontSize:30,fontWeight: FontWeight.bold)),
                SizedBox(height: 20,),
                Text("Login in to your Account",style: TextStyle(color: Colors.black,fontSize:15,fontWeight: FontWeight.bold)),
SizedBox(height: 30,),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                    ),
                    label: Text("Email"),
                ),
                ),
                SizedBox(height: 20,),
            TextField(
              decoration: InputDecoration(

                border: OutlineInputBorder(),

                    label: Text("Password"),
                  ),
                ),
                SizedBox(height: 50,),
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Login()));
                },
                  style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(29.0)),backgroundColor: Colors.lightBlueAccent,fixedSize: Size(350, 57)),
                  child: const Text("Login",style: TextStyle(
                      fontSize: 18,color: Colors.black
                  ),
                  ),),
                SizedBox(height: 10,),
                Text("dont't have an acoount?",style: TextStyle(fontSize: 20),),TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>signup()));
                }, child: Text("Sign Up",style: TextStyle(fontSize: 20,color: Colors.blue,fontWeight: FontWeight.bold),)),
                Image.asset("images/login.jpg"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
