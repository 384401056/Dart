void main(){
  var name = "World";
  print("Hello " + "$name");

  var hex = 0xDEADBEEF;
  print("$hex"); //自动转为整型。
  print("整型转换为16进制：$hex —> 0x${hex.toRadixString(16).toUpperCase()}");

  final time = new DateTime.now();
  print(time);

  // const time2 = new DateTime.now(); //Error，new DateTime.now()不是const常量
  // const list = [1,2,3]; //[...]不是常量
  const list = const[1,2,3];
}

