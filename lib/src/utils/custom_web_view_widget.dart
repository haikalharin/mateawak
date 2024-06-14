import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:html/dom.dart' as dom;
import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';

InAppWebView customWebViewWidget(String html,{String? cssStyle}) {
  final richText = InAppWebView(

    initialUrlRequest: URLRequest(url: WebUri(html)),
    initialSettings: InAppWebViewSettings(
      useShouldOverrideUrlLoading: true,
      javaScriptEnabled: true,
      javaScriptCanOpenWindowsAutomatically: true,
      useShouldInterceptRequest: true,
      useHybridComposition: true,
    ),
    shouldOverrideUrlLoading: (controller, navigationAction) async {
      // You can access the URL like this
      final url = navigationAction.request.url.toString();
      if (url.contains("example")) {
        return NavigationActionPolicy.ALLOW;
      } else {
        //TODO: Launch Url Outside the app.
        //_launchURL(url);
        return NavigationActionPolicy.ALLOW;
      }
    },
    onWebViewCreated: (InAppWebViewController controller) {
      controller;
      // Inject the CSS file into the WebView.
      if(cssStyle != null) {
        controller.injectJavascriptFileFromUrl(
            urlFile: WebUri(cssStyle));
      }
    },
    onLoadStop: (controller, url) {
      //TODO: Stop Loader
    },
  );
  return richText;
}