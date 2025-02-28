import 'package:flutter/material.dart';

import 'login.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Center(
              child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(height: 15,),              
                     Image.asset(
                      'assets/images/1.jpg', 
                      width: 700, 
                      height: 300, 
                    ),
                  
                    const Text(
                      '!ابدأ تجربتك الآن',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 15),
                    
                       const Text(
                        'اكتشف كيف يمكن لتطبيق إدارة حلقات التحفيظ تسهيل عملك اليومي. أدخل الآن وجرب بنفسك.',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                        textAlign: TextAlign.center,
                      ),                 
                  ],
                ),
            ),
            ),
            bottomNavigationBar: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Login()));
                }, 
                child: const Text("ابدأ")),
            ),
              
            );
  }
}