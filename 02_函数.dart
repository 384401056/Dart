void main() {
  //函数的调用
  print(sayHello("Gaoyanbin"));

  //无返回值的函数
  sayHello2("Hello boy...");

  //函数简写
  sayHello3(name) => "Hello $name";
  print(sayHello3("Ho Ho Ho"));

  //匿名函数的写法
  var func = (name)=>"Hello $name";
  print(func("Wo Wo Wo"));

  var x = makeSubstract(5); //返回函数的函数。
  print(x(2));

  var callback = [];

  for (var i = 0; i < 3; i++) {
    //将一个匿名函数加入一个数组中。
    callback.add( ()=>print("Save $i") );
  }

  //循环调用数组中的函数。
//  for (var func in callback){
//    func();
//  }
  //循环调用数组中的函数。效果同上
  callback.forEach((a)=> a());

  func01(1,2,e:5); //其中c 和 d 使用了默认参数(除非重新指定的新值)

  func02(1,2);
}

//可选参数。其中a,b参数是必选的， c,d,e是可选的
void func01(a, b, {c:3,d:4,e}){
  print("$a, $b, $c, $d, $e");
}

void func02(a,b,[c=3,d=4,e]){
  print("$a, $b, $c, $d, $e");
}


//返回函数的函数(函数闭包)
Function makeSubstract(num n) {
  return (num i) => n - i;
}


String sayHello(String name) {
  return "Hello $name";
}

//以上方法可以简写为此
sayHello3(name) => "Hello $name";

sayHello2(String name) {
  print("$name");
}

