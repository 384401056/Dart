library student.src.student;

import 'person.dart';

class Student extends Person{
  String id = '';

  Student(String name, this.id):super(name);

  String toString() => 'Name:$name  ID:$id';
}