void main() {
  var m = new Myclass(1000, 2000, 500000);
  print(m.c);
  print(m.eval);
  m.fun1();
  m.fun2();

  print(m.use);
}

class Expres {
  var c;
  Expres(this.c);
  void fun1() {
    print('c=$c');
  }
}

class ExpressionEval {
  get eval => 20;

  void fun2() {
    print('${this.eval}');
  }
}

class Susee {
  get use => 200000;
}

/**
 * Myclass 拥有了多个类的属性和方法.
 */
class Myclass extends Expres with ExpressionEval, Susee {
  var a;
  var b;
  Myclass(this.a, this.b, c) : super(c);
}
