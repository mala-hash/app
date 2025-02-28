import 'package:flutter/material.dart';
import '../model/classes.dart';


class LessonProvider with ChangeNotifier{
  List lessons = [];
  double id = 0;

  add(Lesson name){
    lessons.add(name);
    notifyListeners();//setstate
  }

  delete(name){
    lessons.remove(name);
    notifyListeners();
  }
}

class StudentProvider with ChangeNotifier{
  List students = [];
  int id = 0;

  add(Student name){
    students.add(name);
    id += 1;
    notifyListeners();//setstate
  }

  delete(name){
    students.remove(name);
    notifyListeners();
  }
}