void main() {
  var p1 = new Point(10, 20);
  var p2 = new Point.fromList([10, 20, 30]); //使用命名构造函数
  print(p1);
  print(p2);

  //创建不可变(常量)对象。
  final ImmutablePoint origin = const ImmutablePoint(10, 20); // 创建一个常量对象不能用new，要用const
  print(origin);
}

//如果未显式定义构造函数，会默认一个空的构造函数
//未定义父类的时候，默认继承自Object
class Point {
  num x;
  num y;
  num z;

  Point(this.x, this.y, z) {//第一个值传递给this.x，第二个值传递给this.y
    this.z = z;
  }

  //命名构造函数，格式为Class.name(var param) ,同时使用冒号初始化变量
  Point.fromList(var list): 
  this.x = list[0], //this可省略。
  y = list[1],
  z = list[2] {

  }

  String toString() => 'x:$x  y:$y  z:$z';
}


//不可变的对象
class ImmutablePoint {
    final num x; //属性要用final装饰.
    final num y;
    const ImmutablePoint(this.x, this.y); // 常量构造函数,用const定义.
    
    String toString() => 'x:$x  y:$y';
}
