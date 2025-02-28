import 'package:flutter/material.dart';
import '../conistance/textfeild.dart';
import 'home.dart';
import 'register.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 247, 247),
      appBar: AppBar(),
      
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                //make sure              
                keyboardType: TextInputType.emailAddress,
                obscureText: false,
                decoration: texttFieldDecoration.copyWith(hintText: "Enter Your Email:",),
              ),
              const SizedBox(height: 30,),
              TextField(
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: texttFieldDecoration.copyWith(hintText: "Enter Your Password:",),
              ),
              const SizedBox(height: 30,),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Home()));
                },
                style: ButtonStyle(
                  
                  backgroundColor: const WidgetStatePropertyAll(Colors.blue),
                  padding: const WidgetStatePropertyAll(EdgeInsets.all(12)),
                  shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))
                ), 
                child: Text("Sign In", style: TextStyle(fontSize: 15, color: Colors.black),),
                ),
                const SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't Have an Account?", style: TextStyle(fontSize: 15)),
                    TextButton(onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Register()));
                    },
                     child: const Text("sign up", style: TextStyle(color: Colors.black, fontSize: 15),))
                  ],
                )
            ],
          ),
        ),
      ),
    );
  }
}