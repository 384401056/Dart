void main() {
//  //函数的调用
  print(sayHello("Gaoyanbin"));
//
//  //无返回值的函数
  sayHello2("Hello boy...");
//
  print(sayHello3("Ho Ho Ho"));
//
//  //匿名函数的写法
  var func = (name) => "Hello $name";
  print(func("Wo Wo Wo"));

  var x = makeSubstract(5); //5是n
  print(x(2)); //2是i


  //函数也是对象，也可以放入数组中。
  var callback = [];

  for (var i = 0; i < 3; i++) {
    //将一个匿名函数加入一个数组中。
    callback.add(() => print("Save $i"));
  }

  //循环调用数组中的函数。
  callback.forEach((a) => a()); //forEach的参数要是一个Function

  //效果同上
  for (var i; i < callback.length; i++) {
    callback[i]();
  }

  //效果同上
  for (var func in callback) {
    func();
  }

  //可先参数的函数
  func01(1, 2, e: 5); //其中c 和 d 使用了默认参数(除非重新指定的新值)

  func02(1, 2);
}

//可选参数。其中a,b参数是必选的， c,d,e是可选的,位置可变，用名字区分
void func01(a, b, {c: 3, d: 4, e}) {
  print("$a, $b, $c, $d, $e");
}

//可选参数。位置不能变
void func02(a, b, [c = 3, d = 4, e]) {
  print("$a, $b, $c, $d, $e");
}

//返回函数的函数(函数闭包)
Function makeSubstract(num n) {
  return (num i) => n - i;
}

String sayHello(String str) {
  return "Hello $str";
}

//以上方法可以简写为此
sayHello3(name) => "Hello $name";

sayHello2(String name) {
  print("$name");
}
