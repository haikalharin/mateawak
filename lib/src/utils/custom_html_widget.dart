import 'package:html/dom.dart' as dom;
import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';

// Custom styling function
Widget customListStyle(dom.Element children, bool isOrderedList,
    {String? listStyle}) {
  return _buildListItem(children, isOrderedList, listStyle);
}

Widget _buildListItem(
    dom.Element element, bool isOrderedList, String? listStyle) {
  if (listStyle == 'ql-align-center') {
    return Align(
      alignment: Alignment.center,
      child: Text(element.text),
    );
  }
  if (listStyle == 'ql-align-justify') {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        element.text,
        textAlign: TextAlign.justify,
      ),
    );
  }
  if (listStyle == 'ql-align-center') {
    return Align(
      alignment: Alignment.center,
      child: Text(element.text),
    );
  }

  if (listStyle == 'ql-size-huge') {
    return Text(
      element.text,
      style: const TextStyle(fontSize: 40),
    );
  }
  return Padding(
    padding: EdgeInsets.only(
      left: isOrderedList || listStyle != null
          ? 18.0
          : 0.0, // Adjust padding based on list type and custom style
    ),
    child: Text(element.text),
  );
}

// Example usage
HtmlWidget customHtmlWidget(String html) {
  bool isCenter = false;
  bool isJustify = false;
  bool isRight = false;
  String htmlContent = '''
    <style>
      .ql-align-center {
        text-align: center;
      }
      .ql-align-justify {
        text-align: justify;
      }
      .ql-align-right {
        text-align: right;
      }
      .ql-size-small {
        font-size: 0.75em;
        line-height: 16px;
      }
      .ql-size-large {
        font-size: 1.5em;
        line-height: 28px;
      }
      .ql-size-huge {
        font-size: 2.5em;
        line-height: 40px;
      }
      ol, ul {
        padding-left: 1.5em;
      }
      ol > li, ul > li {
        list-style-type: none;
      }
      ul > li::before {
        content: '\2022';
      }
      ul[data-checked=true], ul[data-checked=false] {
        pointer-events: none;
      }
      ul[data-checked=true] > li *, ul[data-checked=false] > li * {
        pointer-events: all;
      }
      ul[data-checked=true] > li::before, ul[data-checked=false] > li::before {
        color: #777;
        cursor: pointer;
        pointer-events: all;
      }
      ul[data-checked=true] > li::before {
        content: '\2611';
      }
      ul[data-checked=false] > li::before {
        content: '\2610';
      }
      li::before {
        display: inline-block;
        white-space: nowrap;
        width: 1.2em;
      }
      li:not(.ql-direction-rtl)::before {
        margin-left: -1.5em;
        margin-right: 0.3em;
        text-align: right;
      }
      li.ql-direction-rtl::before {
        margin-left: 0.3em;
        margin-right: -1.5em;
      }
      ol li:not(.ql-direction-rtl), ul li:not(.ql-direction-rtl) {
        padding-left: 1.5em;
      }
      ol li.ql-direction-rtl, ul li.ql-direction-rtl {
        padding-right: 1.5em;
      }
      ol li {
        counter-increment: list-0;
      }
      ol li:before {
        content: counter(list-0, decimal) '. ';
      }
    </style>
    
    $html
    ''';
  final richText = HtmlWidget(
    htmlContent,
    customStylesBuilder: (element) {
      if (element.attributes.values.isNotEmpty) {
        final String style = element.attributes.values.first ?? '';
        if (style == 'ql-align-right') {
          return {'text-align': 'right', 'width': '100%', 'display': 'inline-block'};
        }
        if (style == 'ql-size-huge') {
          return {'font-size': '2.5em', 'line-height': '40px'};
        }
      }

      return null;
    },
  );
  return richText;
}
