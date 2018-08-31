import 'dart:convert';

void main() {

  // String secret = 'secret';
  // String message = 'Message';

  // List<int> key = UTF8.encode('secret');
  // List<int> bytes = UTF8.encode('Message');
  var str = '{"access_token":"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiI1YjMxOTUzMDdmM2I2ODUzNTBhMzFlNWIiLCJhdWQiOiJmdHJhY2UtZnJvbnQiLCJpYXQiOjE1MzA4NDQxNjk3MzYsInJvbGVzIjp7IjViMjA3NDE4MjRhYTlhMDAwMTkwZDVmNCI6WyI1YjMzNDgzZDNjZGVhMjAwMDEyMTNhMmEiXX19.SNHiA+IYCFDQZiU0LWfh9ksOWT5kStwgqlDsZoZ6zzU=","expires_in":86400}';

  // digest.toString();

  String access_token_hash = JSON.decode(str)['access_token'];
  var temp_str = BASE64.decode(access_token_hash.split(".")[1]);//Base解码并分段
  var access_token_json = UTF8.decode(temp_str);
  Map access_token = JSON.decode(access_token_json);
  var sub, roles;
  sub = access_token['sub'];
  access_token['roles'].forEach((k,v){
    roles = k;
  });
  print(access_token);
  print(sub);
  print(roles);


  // var hmac = new HMAC(new SHA256(), secretBytes);
  // hmac.add(messageBytes);
  // var digest = hmac.close();
  // var hmacSha256 = new Hmac(sha256, key); // HMAC-SHA256
  // var digest = hmacSha256.convert(bytes);
// 
  // print("HMAC digest as bytes: ${digest.bytes}");
  // print("HMAC digest as hex string: $digest");
  // var hash = CryptoUtils.bytesToBase64(digest);


  // var hash = CryptoUtils.base64StringToBytes("JTdCJTIyc3ViJTIyJTNBJTIyNWIzMTk1MzA3ZjNiNjg1MzUwYTMxZTViJTIyJTJDJTIyYXVkJTIyJTNBJTIyZnRyYWNlLWZyb250JTIyJTJDJTIyaWF0JTIyJTNBMTUzMDg0NDE2OTczNiUyQyUyMnJvbGVzJTIyJTNBJTdCJTIyNWIyMDc0MTgyNGFhOWEwMDAxOTBkNWY0JTIyJTNBJTVCJTIyNWIzMzQ4M2QzY2RlYTIwMDAxMjEzYTJhJTIyJTVEJTdEJTdE");
  // print(hash.toString());

}