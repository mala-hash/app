// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_application/model/classes.dart';
import 'package:my_application/pages/students.dart';
import 'package:my_application/provider/providers.dart';
import 'package:provider/provider.dart';

class AddStudents extends StatefulWidget {
  const AddStudents({super.key});

  @override
  State<AddStudents> createState() => _AddStudentsState();
}

class _AddStudentsState extends State<AddStudents> {
  final List<Student> students = [];
  final TextEditingController surahFromController = TextEditingController();
  final TextEditingController surahToController = TextEditingController();
  final TextEditingController verseFromController = TextEditingController();
  final TextEditingController verseToController = TextEditingController();
  final TextEditingController reviewSurahFromController = TextEditingController();
  final TextEditingController reviewSurahToController = TextEditingController();
  final TextEditingController reviewVerseFromController = TextEditingController();
  final TextEditingController reviewVerseToController = TextEditingController();
  final TextEditingController notesController = TextEditingController();

  TextEditingController sName =TextEditingController();
  TextEditingController lName =TextEditingController();


    int selectedRating = -1; 
    String selectedStatus = '';

  @override
  Widget build(BuildContext context) {
    // final instancee = Provider.of<StudentProvider>(context);
    return 
    // ChangeNotifierProvider(
    //     create: (context) => StudentProvider(),
    //     child:
        Directionality(
      textDirection: TextDirection.rtl,
      child:  Scaffold(
          appBar: AppBar(
            title: const Text('بيانات الطالب', style: TextStyle(color: Colors.white)),
            backgroundColor: Colors.blue[800],
            leading: IconButton(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ShowStudents()));
              },
              icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Text('اسم الطالب:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                   TextField(controller: sName, decoration: const InputDecoration(hintText: "ادخل الاسم")),
                       SizedBox(height: 20),
                    
                  const Text('بيانات الحفظ:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Row(
                    children: [
                      Expanded(child: TextField(controller: surahFromController, decoration: const InputDecoration(labelText: 'رقم الصفحة من'))),
                      const SizedBox(width: 10),
                      Expanded(child: TextField(controller: surahToController, decoration: const InputDecoration(labelText: 'رقم الصفحة إلى'))),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(child: TextField(controller: verseFromController, decoration: const InputDecoration(labelText: 'رقم الآية من'))),
                      const SizedBox(width: 10),
                      Expanded(child: TextField(controller: verseToController, decoration: const InputDecoration(labelText: 'رقم الآية إلى'))),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text('التقييم:', style: TextStyle(fontSize: 16)),
                  const SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(10, (index) {
                        return ElevatedButton(
                          onPressed: () {
                            setState(() {
                              selectedRating = index; // تعيين التقييم المحدد
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: selectedRating == index ? Colors.blue : Colors.grey,
                          ),
                          child: Text('${index + 1}'),
                        );
                      }),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text('بيانات المراجعة:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Row(
                    children: [
                      Expanded(child: TextField(controller: reviewSurahFromController, decoration: const InputDecoration(labelText: 'اسم السورة من'))),
                      const SizedBox(width: 10),
                      Expanded(child: TextField(controller: reviewSurahToController, decoration: const InputDecoration(labelText: 'اسم السورة إلى'))),
                    ],
                  ),
                  const SizedBox(height: 3),
                  Row(
                    children: [
                      Expanded(child: TextField(controller: reviewVerseFromController, decoration: const InputDecoration(labelText: 'رقم الآية من'))),
                      const SizedBox(width: 10),
                      Expanded(child: TextField(controller: reviewVerseToController, decoration: const InputDecoration(labelText: 'رقم الآية إلى'))),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text('الحالة:', style: TextStyle(fontSize: 16)),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: ['حاضر', 'متأخر', 'غائب', 'غائب بعذر'].map((status) {
                      return ChoiceChip(
                        label: Text(status),
                        selected: selectedStatus == status,
                        onSelected: (selected) {
                          setState(() {
                            selectedStatus = selected ? status : '';
                          });
                        },
                      );
                    }).toList(),
                  ),
                  const SizedBox(height: 20),
                  const Text('اسم الحلقة:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                   TextField(controller: lName, decoration: const InputDecoration(hintText: "ادخل الاسم")),
                   const SizedBox(height: 20),
                  TextField(
                    controller: notesController,
                    decoration: const InputDecoration(labelText: 'أدخل الملاحظة هنا (اختياري)'),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () { 
                       // instancee.add(Student(name: text.text));
                      // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ShowStudents(name: sName.text,lname: lName.text,)));
                    },
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                    child: Text('حفظ البيانات'),
                  ),
                ],
              ),
            ),
          ),
        ),
      
    );
  }
}