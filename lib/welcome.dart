import 'package:flutter/material.dart';
import 'package:login/login.dart';
import 'package:login/signup.dart';

class welcome extends StatefulWidget {
  const welcome({super.key});

  @override
  State<welcome> createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 20,),
                Text("Welcome",style: TextStyle(color: Colors.black,fontSize:30,fontWeight: FontWeight.bold)),
SizedBox(height: 30,),
Text(" provides extraordinary flutter tutorials!do subscribe",style: TextStyle(color: Colors.black,fontSize:15)),
              SizedBox(height: 30,),
              Image.asset("images/welcome.jpg",
                height: 400,
                width: 350,),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Login()));
              },
                style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(29.0)),backgroundColor: Colors.white,fixedSize: Size(350, 57)),
                child: const Text("Login",style: TextStyle(
                    fontSize: 18,color: Colors.black
                ),
                ),),
                SizedBox(height: 20,),
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> signup()));
                },
                  style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(29.0)),backgroundColor: Colors.lightBlueAccent,fixedSize: Size(350, 57)),
                  child: const Text("Signup",style: TextStyle(
                      fontSize: 18,color: Colors.white
                  ),
                  ),),
              ],

            ),
          ),
        ),
      ),
    );
  }
}
