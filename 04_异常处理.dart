void main(){
  try {
    //在Dart中可以抛出非空对象（不仅仅是Exception或Error）作为异常
//    throw new StateError('值错误!!!!');
   throw new Exception('值必须大于0！');
    // throw "哈哈哈哈";
  } catch (e) {
    print('Catch Exception: $e');
  } finally {
    print('=======================');
  }

  //捕获不同种类的异常。标明类型的异常要用 on 关键字,直接throw() 的不用.
  try {
   throw new Exception('值必须大于0！');
   throw new Error();
   throw ('值必须大于0！');
  } catch (e) {
    print('Catch Exception: $e');
  } on Exception catch(e){
    print('Catch Exception: $e');
  } on Error catch(e){
    print('Catch Error: $e');
  } 
  finally {
    print('=======================');
  }
}

