class Student {
   int? id;
   String name;
   int? phoneNumber;
   String gender;

  Student({this.id, required this.name,  this.phoneNumber ,  this.gender = "male",});}


  class Lesson {
  String name;

  Lesson({required this.name});
}

class Students{
  String name;
  String lname;
  List l = [];

  Students({required this.name, required this.lname});
}