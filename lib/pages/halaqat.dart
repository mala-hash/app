import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/providers.dart';
import 'home.dart';
import 'students.dart';

class HalaqatPage extends StatelessWidget {
  const HalaqatPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cartinstancee = Provider.of<LessonProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("الحلقات", style: TextStyle( color: Colors.white,),),
        // actions: [
        //   Icon(Icons.search, color: Colors.white,),
        // ],
        leading: IconButton(
            onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Home()));
            }, 
            icon: const Icon(Icons.arrow_back,  color: Colors.white,)),
      ),
      body: SizedBox(
        child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: cartinstancee.lessons.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ShowStudents()));
                    },
                    
              child: Card(
                child: ListTile(
                  subtitle: Text(cartinstancee.lessons.length.toString()),///
                  leading: const CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("assets/images/home.jpg"),
                      
                    ),
                  
                  title: Text(cartinstancee.lessons[index].name),
                  trailing: 
                     IconButton(
                      onPressed: () {
                        cartinstancee.delete(cartinstancee.lessons[index]);
                      }, 
                    icon: const Icon(Icons.remove)),
                  ),
                ),
              );
            
          },
          ),
      ),
    );
  }
}