import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget{
  WebViewController webViewController = WebViewController()

  //WebViewController의 loadRequest() 함수를 실행
  ..loadRequest(Uri.parse('https://velog.io/@hubgood98/posts'))

    //자바 스크립트가 제한 없이 실행될 수 있도록 설정 <=> 반대기능은 restricted
  ..setJavaScriptMode(JavaScriptMode.unrestricted);

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('S 라인 블로그'),
        centerTitle: true,
      ),

      body: WebViewWidget(
          controller: webViewController,
      ),
    );
  }


}