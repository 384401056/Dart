void main() {
  var p1 = new Point(10, 20);
  var p2 = new Point.fromList([10, 20, 30]); //使用命名构造函数
  print(p1);
  print(p2);
}

class Point {
  num x;
  num y;
  num z;

  Point(this.x, this.y);

  //命名构造函数，格式为Class.name(var param) ,同时使用冒号初始化变量
  Point.fromList(var list)
      : this.x = list[0], //this可省略。
        y = list[1],
        z = list[2]{

  }




  String toString() => 'x:$x  y:$y  z:$z';
}