import 'package:flutter/material.dart';
import 'package:my_application/model/classes.dart';
import 'package:my_application/pages/addStudent.dart';
import 'home.dart';

class ShowStudents extends StatefulWidget {
   const ShowStudents({super.key, name, lname});

  @override
  State<ShowStudents> createState() => _ShowStudentsState();
}

class _ShowStudentsState extends State<ShowStudents> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("الطلاب", style: TextStyle(color: Colors.white),),
        centerTitle: false,
        leading: IconButton(
          onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Home()));
          }, 
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white,)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
      
      Image.asset("assets/images/home.jpg"),
          const Text(
                'لا يوجد طلاب  بعد، أضف الطلاب من خلال الضغط على "+" في الاسفل.',
                style: TextStyle(fontSize: 16, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
        ],        
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add, color: Colors.white,),
        onPressed: (){
         
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AddStudents()));
        }
        ),
        
    );
  }
}