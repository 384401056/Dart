void main() {
  // var nobleGases = new Map<int, String>();

  // // nobleGases[1] = "King";
  // // nobleGases[2] = "Quene";

  // for (var i=0;i<10;i++){
  //   nobleGases[i] = "King$i";
  // }

  // print(nobleGases);

  // var nobleGases = new Map<String, String>();

  // for (var i=0;i<10;i++){
  //   nobleGases['a$i'] = "King$i";
  // }

  // print(nobleGases);

  //自定义Map
  Map hawaiianBeaches = {
    'oahu': ['waikiki', 'kailua', 'waimanalo'],
    'big island': ['wailea bay', 'pololu beach'],
    'kauai': ['hanalei', 'poipu'],
    'number':[1,2,3,4,5,6,7],
    'String':'Gaoyanbin',
  };

  // print(hawaiianBeaches.containsKey("String"));
  // print(hawaiianBeaches.keys);
  // print(hawaiianBeaches.values);

  // for (var str in hawaiianBeaches.keys) {
  //   print(hawaiianBeaches[str]);
  // }

  // if(hawaiianBeaches.containsKey("String")){
  //   hawaiianBeaches.remove("String"); //删除某个键值对。
  // }

  // var keys = hawaiianBeaches.keys;
  // var values = hawaiianBeaches.values;
  // print(values);
  // print(values.any((v)=>v=="Gaoyanbin"));//判断元素中是否有一个是满足条件的，如果有返回true
  // print(hawaiianBeaches.keys.length);
  // print(hawaiianBeaches.values.length);

  //使用forEach来遍历Map.
  hawaiianBeaches.forEach((k,v){
    print(k);
    print(v);
    print('-----------------');
  });


}
