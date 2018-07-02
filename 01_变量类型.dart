void main() {
  //Dart 语言本质上是动态类型语言，类型是可选的
  //可以使用 var 声明变量，也可以使用类型来声明变量
  //一个变量也可以被赋予不同类型的对象
  //但大多数情况，我们不会去改变一个变量的类型

//在Dart中，相邻的字符串在编译的时候会自动连接
  //这里发现一个问题，如果多个字符串相邻，中间的字符串不能为空，否则报错
  //但是如果单引号和双引号相邻，即使是空值也不会报错，但相信没有人这么做
  //var name = 'Wang''''Jianfei'; 报错
  var name = 'Wang' ' ' 'Jianfei';

  //Dart中字符串不支持“+”操作符，如str1 + str2
  //如果要链接字符串，除了上面诉说，相邻字符串自动连接外
  //还可以使用“$”插入变量的值
  print("Hello " + "$name");

  //声明原始字符串，直接在字符串前加字符“r”
  //可以避免“\”的转义作用，在正则表达式里特别有用
  print(r"换行符：\n \t \\\\\\\");

  //Dart中数值是num，它有两个子类型：int 和 double
  //int是任意长度的整数，double是双精度浮点数
  var hex = 0xDEADBEEF;

  print("$hex"); //自动转为整型。

  //翻了半天的文档，才找打一个重要的函数：转换进制，英文太不过关了
  //上面提到的字符串插值，还可以插入表达式：${}
  print("整型转换为16进制：$hex —> 0x${hex.toRadixString(16).toUpperCase()}");

  // const time2 = new DateTime.now(); //Error，new DateTime.now()不是const常量
  final time = new DateTime.now(); //Ok
  // const list = [1,2,3]; //[...]不是常量
  const list = const [1, 2, 3];//OK
  final list1 = [1, 2, 3]; //OK
  final list2 = const [1, 2, 3]; //OK
// final list = const[new DateTime.now(),2,3];//Error,const右边必须是常量
}
