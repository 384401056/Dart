void main() {
  // stringBuffer();
  // list();
  set();
  map();

  // //对list()的排序。
  var fruits = ['bananas', 'apples', 'oranges'];
  fruits.sort((a, b) => a.compareTo(b));
  print(fruits);

  //容器可以指定参数类型
  var mylist = new List<String>();
  mylist.add('apples');
  mylist.add(5); // 错误: 在checked mode中会抛出异常
}

/**
 * StringBuffer可以特别高效的构建多个字符串另外，以前的书中用的add方法已经改为write
 */
void stringBuffer() {
  StringBuffer sb = new StringBuffer();

  sb.write("Use a StringBuffer ");
  sb.writeAll(['for ', 'efficient ', 'string ', 'creation ']);
  sb..write('if you are ')..write('building lots of string.');

  print(sb.toString());

  sb.clear();
}

/**
 * 列表，也就是常说的数组
 * 常见的添加、索引、删除等方法如下
 */
void list() {
  // 使用List的构造函数，也可以添加int参数，表示List固定长度
  var vegetables = new List();

// 或者简单的用List来赋值
  var fruits = ['apples', 'oranges'];

// 添加元素
  fruits.add('kiwis');

// 添加多个元素
  fruits.addAll(['grapes', 'bananas']);

  print(fruits);

// 获取List的长度
  print(fruits.length);

// 利用索引获取元素
  print(fruits[0]);

// 查找某个元素的索引号
  print(fruits.indexOf('apples'));

// 利用索引号删除某个元素
  int appleIndex = fruits.indexOf('apples');
  fruits.removeAt(appleIndex);

// 删除所有的元素
  fruits.clear();
}

void set() {
  var ingredients = new Set();

  ingredients.addAll(['gold', 'titanium', 'xenon']);
  assert(ingredients.length == 3);

// 添加已存在的元素无效
  ingredients.add('gold');
  assert(ingredients.length == 3);

// 删除元素
  ingredients.remove('gold');
  assert(ingredients.length == 2);

// 检查在Set中是否包含某个元素
  assert(ingredients.contains('titanium'));

// 检查在Set中是否包含多个元素
  assert(ingredients.containsAll(['titanium', 'xenon']));
  ingredients.addAll(['gold', 'titanium', 'xenon']);

// 获取两个集合的交集
  var nobleGases = new Set.from(['xenon', 'argon']);
  var intersection = ingredients.intersection(nobleGases);
  assert(intersection.length == 1);
  assert(intersection.contains('xenon'));

// 检查一个Set是否是另一个Set的子集
  var allElements = [
    'hydrogen',
    'helium',
    'lithium',
    'beryllium',
    'gold',
    'titanium',
    'xenon'
  ];
  assert(ingredients.isSubsetOf(allElements));
}

void map() {
// Map的声明
  var hawaiianBeaches = {
    'oahu': ['waikiki', 'kailua', 'waimanalo'],
    'big island': ['wailea bay', 'pololu beach'],
    'kauai': ['hanalei', 'poipu']
  };
  var searchTerms = new Map();

// 指定键值对的参数类型
  var nobleGases = new Map<int, String>();

// Map的赋值，中括号中是Key，这里可不是数组
  nobleGase[54] = 'dart';

//Map中的键值对是唯一的
//同Set不同，第二次输入的Key如果存在，Value会覆盖之前的数据
  nobleGases[54] = 'xenon';
  assert(nobleGases[54] == 'xenon');

// 检索Map是否含有某Key
  assert(nobleGases.containsKey(54));

//删除某个键值对
  nobleGases.remove(54);
  assert(!nobleGases.containsKey(54));

  
  var keys = hawaiianBeaches.getKeys();
  assert(keys.length == 3);
  assert(new Set.from(keys).contains('oahu'));

  var values = hawaiianBeaches.getValues();
  assert(values.length == 3);

//迭代器中有一个有意思的函数any，用来检测迭代器中的数据
//当其中一个元素运行函数时return true，那么any的返回值就为true，否则为false
//与之相对的是函数every，要所有函数运行函数return true，那么every返回true
  assert(values.any((v) => v.indexOf('waikiki') != -1));

// 你可以用foreach来遍历数据，但记住它是无序的
  hawaiianBeaches.forEach((k, v) {
    print('I want to visit $k and swim at $v');
  });

//检索是否包含某个Key或Value
  assert(hawaiianBeaches.containsKey('oahu'));
  assert(!hawaiianBeaches.containsKey('florida'));

//V putIfAbsent(K key, Function V ifAbsent())函数，通过Key来查找Value
//当某个Key不存在的时候，会执行第二参数的Function来添加Value
  var teamAssignments = {};
  teamAssignments.putIfAbsent('Catcher', () => 'Catcher'.length);
  assert(teamAssignments['Catcher'] != null);
}
