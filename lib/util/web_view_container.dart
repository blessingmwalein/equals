import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CommonWebView extends StatefulWidget {
  CommonWebView({Key? key}) : super(key: key);
  @override
  _CommonWebViewState createState() => _CommonWebViewState();
}

class _CommonWebViewState extends State<CommonWebView> {
  WebViewController? controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setBackgroundColor(const Color(0x00000000))
    ..setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) {
          // Update loading bar.
        },
        onPageStarted: (String url) {},
        onPageFinished: (String url) {},
        onWebResourceError: (WebResourceError error) {},
        onNavigationRequest: (NavigationRequest request) {
          if (request.url.startsWith('https://www.youtube.com/')) {
            return NavigationDecision.prevent;
          }
          return NavigationDecision.navigate;
        },
      ),
    )
    ..loadRequest(Uri.parse('https://www.cbz.co.zw/terms-conditions/'));
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Simple Example')),
      body: WebViewWidget(controller: controller ?? WebViewController()),
    );
  }
}
