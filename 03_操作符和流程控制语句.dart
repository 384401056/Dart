void main(){
  int a = 3;
  int b = 2;
  print(a/b);
  print(a~/b); //取整 ~/

  Person p = new Person();
//  p.name = "Wang";
//  p.setCountry("USA");

  //功能与上面两句相同, 使用了..级联符号
  p..name = "Zhang"
   ..setCountry("China");

  print(p);

  //if语句
  var bool = false;
  if (bool) {
    print('JavaScript is ok.');
  } else {
    print('Dart in production mode is ok.');
  }

  var device = null;
  if (device == null){
    print('JavaScript is ok.');
  }else{
    print('Dart in production mode is ok.');
  }

  //循环语句
  for(int i = 0; i<3; i++) {
    print(i);
  }


  //迭代
  var collection = [0, 1, 2];
  collection.forEach((x) => print(x));//forEach的参数为Function
  for(var x in collection) {
    print(x);
  }

  //while循环
  while(!bool){
    print("while循环");
    bool = true;
  }

  //swich语句。
//  var command = 'OPEN';
//  switch (command) {
//    case 'CLOSED':
//      print('CLOSED');
//      break;
//    case 'OPEN'://产生落空效果，落空以后不会进行判断case的条件，而是直接执行下一分句中的代码。
//    case 'NOW_OPEN':
//      print('OPEN');
//      break;
//    default:
//      print('Default');
//  }

  //swich语句2。如果你想落空，又不是按顺序落空。可以使用continue <label>
  //落空以后不会进行判断case的条件，而是直接执行下一分句中的代码。
  var command = 'CLOSED';
  switch (command) {
    case 'CLOSED':
      print('CLOSED');
      continue nowClosed; 
    case 'OPEN':
      print('OPEN');
      break;
    nowClosed: 
    case 'NOW_CLOSED':
      print('NOW_CLOSED');
      break;
  }

}


class Person {
  String name;
  String country;

  void setCountry(String country){
    this.country = country;
  }

  //print对象时调用的方法.
  String toString() => 'Name:$name Country:$country';
}