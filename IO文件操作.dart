import 'dart:io';

void main(){


}

void fun1() {
  var directory = new Directory("TempFile1");//创建文件夹
  directory.createSync(); //同步执行
  print(directory.absolute.path);  //absolute返回path为绝对路径的Directory对象
}

void fun2() {
  //异步执行，等结果返回后再打印。
  new Directory("TempFile2").create().then((dir) => print(dir.absolute.path));
}

//Dart中变量的类型可以省略，包括函数
//使用关键字await，外层函数用async声明返回值为Future
fun3() async {
  var directory = await new Directory("TempFile3").create();
  print(directory.absolute.path);
}

/**
 * 创建指定目录
重命名目录
删除目录
创建临时文件夹
获取父目录
列出目录的内容
 */
handleDir() async {
  //可以用Platform.pathSeparator代替路径中的分隔符"/"
  //效果和"dir/subdir"一样
  //如果有子文件夹，需要设置recursive: true
  var directory = await new Directory("dir${Platform.pathSeparator}one").create(recursive: true);

  assert(await directory.exists() == true);
  //输出绝对路径
  print("Path: ${directory.absolute.path}");

  //重命名文件夹
   await directory.rename("dir/subdir").then((dir) => print("Path: ${dir.absolute.path}"));

  //创建临时文件夹
  //参数是文件夹的前缀，后面会自动添加随机字符串
  //参数可以是空参数
  var tempDir = await Directory.systemTemp.createTemp('temp_dir');
  assert(await tempDir.exists() == true);
  print("Temp Path: ${tempDir.path}");//C:\Users\ADMINI~1.USE\AppData\Local\Temp\temp_dir663453fd-7c1d-11e8-91e9-005056c00008

  //返回上一级文件夹
  var parentDir = tempDir.parent;
  print("Parent Path: ${parentDir.path}");

  //列出所有文件，不包括链接和子文件夹
  Stream<FileSystemEntity> entityList = parentDir .list(recursive: false, followLinks: false);
  await for(FileSystemEntity entity in entityList) {

    //文件、目录和链接都继承自FileSystemEntity
    //FileSystemEntity.type静态函数返回值为FileSystemEntityType
    //FileSystemEntityType有三个常量：
    //Directory、FILE、LINK、NOT_FOUND
    //FileSystemEntity.isFile .isLink .isDerectory可用于判断类型
    print(entity.path);
  }

  //删除目录
  await tempDir.delete();
  assert(await tempDir.exists() == false);
}