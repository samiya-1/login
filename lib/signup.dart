import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/login.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Text("SignUp",style: TextStyle(color: Colors.black,fontSize:30,fontWeight: FontWeight.bold)),
              SizedBox(height: 20,),
              Text('Create an Account.Its free',style: TextStyle(color: Colors.black,fontSize:15,fontWeight: FontWeight.bold)),
              SizedBox(height: 30,),
              TextField(
                decoration:InputDecoration(
                  border: OutlineInputBorder(

                  ),
                    label: Text("Username"), 
                ),
              ),
              SizedBox(height: 20,),
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
                  border: OutlineInputBorder(

                  ),
                  label: Text("Password"),
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(

                  ),
                  label: Text("Confirm Password"),
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> signup()));
              },
                style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(29.0)),backgroundColor: Colors.lightBlueAccent,fixedSize: Size(350, 57)),
                child: const Text("Sign Up",style: TextStyle(
                    fontSize: 18,color: Colors.black
                ),
                ),),
              SizedBox(height: 20,),
              Text("Already have an acoount?",style: TextStyle(fontSize: 20),),TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
              }, child: Text("Login",style: TextStyle(fontSize: 20,color: Colors.lightBlueAccent,fontWeight: FontWeight.bold),)),
            ],
          ),
        ),
      ),
    );
  }
}
