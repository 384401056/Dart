
void main() {
  Iterable it = naturalsTo(20).iterator;
  while(it.moveNext()) {
    print(it.current);
  }
}

//sync* 同步生成器
Iterable naturalsTo(n) sync* {
  print("Begin");
  int k = 0;
  while (k < n) yield k++;
  print("End");
}



