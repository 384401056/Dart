import 'package:http/http.dart' as http;

main(List<String> arguments) {
  var url = 'http://httpbin.org/post';
  //向指定URL发送带参数的POST请求
  http.post(url ,body: 'name=doodle&color=blue').then((response) {
    print("响应状态： ${response.statusCode}");
    print("响应正文： ${response.body}");
  });
}