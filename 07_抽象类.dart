void main(){

  var rect = new Rectangle(300, 300);
  print(rect.perimeter());

}

abstract class Shape { // 定义了一个 Shape 类/接口
    num perimeter(); // 这是一个抽象方法，不需要abstract关键字，是隐式接口的一部分。
}


class Rectangle implements Shape { // Rectangle 实现了 Shape 接口
    final num height, width; //只能进行一次赋值。
    Rectangle(num this.height, num this.width);  // 紧凑的构造函数语法
    
    @override
    num perimeter() {
      return 2*height + 2*width;
    }
}