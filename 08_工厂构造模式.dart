void main() {
  var logger1 = new Logger('UI');
  logger1.log('Button clicked');
  print(logger1.hashCode);

  var logger2 = new Logger('UI'); //重新new出的对象，hascode与上一个相同，说明工厂模式成功
  print(logger1.hashCode);
}

class Logger {
  final String name;
  bool mute = false;

  // 变量前加下划线表示私有属性
  static final Map<String, Logger> _cache = <String, Logger>{};

  factory Logger(String name) {
    if (_cache.containsKey(name)) {
      return _cache[name];
    } else {
      final logger = new Logger._internal(name);//使用命名构造函数。
      _cache[name] = logger;
      return logger;
    }
  }

  Logger._internal(this.name);

  void log(String msg) {
    if (!mute) {
      print(msg);
    }
  }
}
