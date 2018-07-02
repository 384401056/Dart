void main() {
  // String str = "1A 2B 11Q 12J #004488 0123Gao";

  // RegExp re = new RegExp(r'(\d+)([A-Z])');

  // Iterable<Match> matches = re.allMatches(str);

  // for(Match m in matches){
  //   for(int i=0; i<m.groupCount+1; i++) {
  //     String match = m.group(i);
  //     print("Group[$i]: $match");
  //   }
  //   print("\n");
  // }

  // String str = "ABC\nDEF";
  // RegExp reg = new RegExp(r".*");
  // Iterable<Match> matches = reg.allMatches(str);

  // for (Match m in matches) {
  //   print("${m.group(0).isEmpty ?
  //     "Match is Empty\nIndex is ${m.end}" :
  //     "Match is ${m.group(0)} \nAscii is ${m.group(0).codeUnits}\nIndex is ${m.end}"}");
  //   print("--end--\n");
  // }

  //验证
  // String str = "010-88888888";
  // bool ret = new RegExp(r"^0[1-9]\d-\d{8}$").hasMatch(str);
  // print("$ret");

  //提取中文字符
  // String str = "Dart高谚宾Flutter中文社区google呵可枳昔夺在柑大本营魂牵梦萦";
  // RegExp reg = new RegExp(r"[\u4e00-\u9fa5]+");
  // Iterable<Match> matches = reg.allMatches(str);

  // for (Match m in matches) {
  //   print(m.group(0));
  // }

  //替换,首字母变大写
  String str = "dart and flutter(sky) gao yan bin";
  print(str.replaceAllMapped(new RegExp(r"\b\w"), (match)=>match.group(0).toUpperCase()));

}
