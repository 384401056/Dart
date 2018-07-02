void main() {
  Student s = new Student("Jima");
  print(s.greeting());


  Teacher t = new Teacher("Lucass");
  print(t.greeting());

  //多态
  Person p1 = new Student("Person01");
  print(p1.greeting());
  Person p2 = new Teacher("Person02");
  print(p2.greeting());
}

//抽象类/接口（去除abstract，效果不变。）
abstract class Person{
  String greeting();
}

// 实现接口，实现可以是多实现。
class Student implements Person{
  String name;

  Student(this.name); 

  @override
  String greeting() {
    return 'Hello!, I am $name!, Student';
  }
}

//继承抽象类，不会变为抽象类。继承只能是单继承
class Teacher extends Person{
  String name;

  Teacher(this.name);

  @override
  String greeting() {
     return 'Hello!, I am $name!, Teacher';
  }
}