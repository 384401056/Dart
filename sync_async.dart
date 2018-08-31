import 'dart:async';

vom main(){

  var value = '';

  

  func1().then((val)=> value = val);
  func2(value);
}

Future<String> func1() async{
  var ret = 0;
  for (var i=0;i<1000000000;i++){
    ret +=1;
  } 
  return ret.toString();
}

void func2(String val){
  print(val);
  print("func2");
}