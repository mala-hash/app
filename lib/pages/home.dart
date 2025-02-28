// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import '../model/classes.dart';
import '../provider/providers.dart';
import 'halaqat.dart';
import 'login.dart';
import 'students.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController text = TextEditingController();
    LessonProvider instancee = Provider.of<LessonProvider>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color.fromARGB(255, 241, 241, 241)),
        backgroundColor: const Color.fromARGB(255, 59, 114, 209),
        title: Text(
          'إدارة حلقات التحفيظ',
          style: TextStyle(fontSize: 18, color: Colors.white),
          textAlign: TextAlign.right,
        ),
        centerTitle: false,
      ),
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/im1.jpg"), //change
                      fit: BoxFit.cover,
                    ),
                  ),
                  accountName:
                      Text("Name", style: TextStyle(color: Colors.white)),
                  accountEmail: Text(
                    "",
                  ),
                  currentAccountPicture: CircleAvatar(
                    radius: 55,
                    backgroundImage: AssetImage("assets/images/1.jpg"),
                  ),
                ),
                ListTile(
                  title: Text("الصفحة الرئيسية"),
                  leading: Icon(Icons.home),
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => const Home()));
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  title: Text("الحلقات"),
                  leading: Icon(Icons.people),
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>  HalaqatPage()));
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  title: Text("الطلاب"),
                  leading: Icon(Icons.person_pin),
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => ShowStudents()));
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  title: Text("Logout"),
                  leading: Icon(Icons.logout),
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => const Login()));
                  },
                ),
              ],
            ),
            Container(
                margin: EdgeInsets.only(bottom: 12),
                child: Text(
                  "Devopled By Malak 2025",
                  style: TextStyle(fontSize: 12),
                ))
          ],
        ),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 10, top: 3, right: 5),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          style: BorderStyle.solid, color: Colors.grey))),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.handshake),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'مرحبا',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ),SizedBox(height: 10,),
            TextField(
              controller: text,
              decoration: InputDecoration(
                hintText: "اضافة حلقة",
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  
                    borderSide: BorderSide(color: Colors.blue, style: BorderStyle.solid)),
                contentPadding: EdgeInsets.all(8),
              ),
            ),
            IconButton(
                onPressed: () {
                  instancee.add(Lesson(name: text.text));
                },
                icon: Icon(Icons.add)),
            Image.asset(
              'assets/images/home.jpg', //
              width: 250,
              height: 250,
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                'إدارة حلقات مسجد الرحمة',
                style: TextStyle(fontSize: 16, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            
            SizedBox(
              width: 20,
            ),
            
          ],
        ),
      ),
    );
  }
}
