void main(){
  try {
    //在Dart中可以抛出非空对象（不仅仅是Exception或Error）作为异常
//    throw new StateError('值错误!!!!');
//    throw new Exception('值必须大于0！');
    throw "哈哈哈哈";
  } catch (e) {
    print('Catch Exception: $e');
  } finally {
    print('=======================');
  }
}

