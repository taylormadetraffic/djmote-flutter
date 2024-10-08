import 'dart:io';
import 'dart:ui' as ui;

import 'package:flutter/widgets.dart';

class UrlHandler{
  String buildInitUrl(String baseUrl) {
    var initUrl = baseUrl;
    if (initUrl.contains('?')) {
      initUrl += '&';
    } else {
      initUrl += '?';
    }
    initUrl += 'appOS=${Platform.operatingSystem}';

    final mediaQuery = MediaQueryData.fromView(ui.PlatformDispatcher.instance.views.first);
    initUrl += '&paddingTop=${mediaQuery.padding.top}';
    initUrl += '&paddingBottom=${mediaQuery.padding.bottom}';

    return initUrl;
  }
}