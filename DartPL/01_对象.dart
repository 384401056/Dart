import 'dart:math';
import 'dart:core';

void main() {
  // var a = new Point(10, 20);
  // var b = new Point(10, 20);
  // print(identical(a, b));
  // print(a==b);//使用了重写的==操作符,所以返回true
  // print(a.hashCode);
  // print(b.hashCode);

  // var newA = a.scale(10);
  // print(newA.x);
  // print(newA.y);

  // var newB = a + b;
  // var newC = a - b;
  // print(newB.x);
  // print(newB.y);
  // print(newC.x);
  // print(newC.y);

  // int sqrt = Point.distance(newB, newC);
  // print(sqrt);

  // var point = new Point(10, 30);
  // point.x = 100;
  // print(point.x);
  // print(point.y);

  var p3d = new Point3D(10,20,30);
  print(p3d.aPlus);
  print(p3d.bPlus);
  print(p3d.z);

  var p3d2 = new Point3D.polar(10, 20, 30);
  print(p3d2.aPlus);
  print(p3d2.bPlus);
  print(p3d2.z);

}
/**
 * 一个类
 */
class Point {
  var x, y;
  static var numberOfInstances = 0;//类变量（静态变量）

  Point(this.x, this.y);
  scale(factor) => new Point(x * factor, y * factor); //对象方法，返回一个新对象
  operator +(p) => new Point(x + p.x, y + p.y); //对象方法+, 当对象与对象相加时，调用此方法。返回一个把x,y值都改变了的新Point对象。
  operator -(p) => new Point(x - p.x, y - p.y);
  operator ==(p) => x==p.x && y==p.y; //重写的了==操作，只要x,y相等，就认为两个对象等

  //类方法（静态方法）
  static distance(p1, p2) {
    var dx = p1.x - p2.x;
    var dy = p1.y - p2.y;
    return sqrt(dx * dx + dy * dy);
  }
}

class Point3D extends Point{
  var z;
  var aPlus, bPlus;
  Point3D.polar(this.aPlus, this.bPlus, c) :z=c,super(aPlus, bPlus);
  Point3D(a, b, c):this.polar(a+100, b+100, c);//重定向构造函数。
}
