import 'package:equals_online_app/layouts/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class BankProductTerms extends StatelessWidget {
  const BankProductTerms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => BankProductTermsWebView(),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          color: Colors.purple,
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: const Text(
          'View Bank Product Terms',
          style: TextStyle(
            fontSize: 15.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class BankProductTermsWebView extends StatelessWidget {
  final controller = WebViewController()
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
  Widget build(BuildContext context) {
    return MainPageLayout(
      title: 'Bank Product Terms',
      child: WebViewWidget(controller: controller),
    );
  }
}
