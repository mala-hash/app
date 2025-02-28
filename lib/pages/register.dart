import 'package:flutter/material.dart';

import '../conistance/textfeild.dart';
import 'login.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 247, 247),
      appBar: AppBar(),
      // ??????
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  keyboardType: TextInputType.text,
                  obscureText: false,
                  decoration: texttFieldDecoration.copyWith(hintText: "Enter Your Name:",),
                ),
                const SizedBox(height: 30,),
                TextField(
                  //القيود
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
                  onPressed: () {},
                  style: ButtonStyle(
                    
                    backgroundColor: const WidgetStatePropertyAll(Colors.blue),
                    padding: const WidgetStatePropertyAll(EdgeInsets.all(12)),
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))
                  ), 
                  child: Text("Register", style: TextStyle(fontSize: 15, color: Colors.black),),
                  ),
                  const SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Have an Account?", style: TextStyle(fontSize: 15)),
                      TextButton(onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Login()));
                      },
                       child: const Text("sign in", style: TextStyle(color: Colors.black, fontSize: 15),))
                    ],
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}