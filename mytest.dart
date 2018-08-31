//dart:前缀表示Dart的标准库，如dart:io、dart:html
import 'dart:math';


//当然，你也可以用相对路径或绝对路径的dart文件来引用
// import 'lib/student/student.dart';


/**
 * show关键字可以显示某个成员（屏蔽其他）
 * hide关键字可以隐藏某个成员（显示其他）
 */
// import 'lib/student/student.dart' show Student, Person;
// import 'lib/student/student.dart' hide Person;

void main(){
  Map<String, dynamic> myMap = {
    "lll":['a','b','c'],
  };

  String inputNum = "000050.34";
  num x = num.parse(inputNum);
  print("$x");
}

void func(MyClas a){
  a.name = "bbb";
  a.isMan = false;
}

class MyClas {
  MyClas(this.name,{bool this.isMan: false}){}
  String name;
  bool isMan;
}