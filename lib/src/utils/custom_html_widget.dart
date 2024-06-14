
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:html/dom.dart' as dom;
import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:module_etamkawa/src/configs/theme/color.theme.dart';

// Custom styling function
Widget customListStyle(dom.Element children, bool isOrderedList,
    {String? listStyle}) {
  return _buildListItem(children, isOrderedList, listStyle);
}

Widget _buildListItem(
    dom.Element element, bool isOrderedList, String? listStyle) {
  if (element is Text) {
    return Padding(
      padding: EdgeInsets.only(
        left: isOrderedList || listStyle != null
            ? 18.0
            : 0.0, // Adjust padding based on list type and custom style
      ),
      child: Text(element.text),
    );
  } else if (element is dom.Node) {
    return customListStyle(element, isOrderedList, listStyle: listStyle);
  } else {
    return const Text('Unsupported node type');
  }
}

// Example usage
HtmlWidget customHtmlWidget(String html) {
  debugPrint(html);
  final richText = HtmlWidget(
    html,
    customWidgetBuilder: (element) {
      if (element.localName == 'li') {
        TextAlign textAlign = TextAlign.left;
        Alignment alignment = Alignment.centerLeft;

        if (element.classes.contains('ql-align-center')) {
          textAlign = TextAlign.center;
          alignment = Alignment.center;
        } else if (element.classes.contains('ql-align-justify')) {
          textAlign = TextAlign.justify;
          alignment = Alignment.centerLeft;

        } else if (element.classes.contains('ql-align-right')) {
          textAlign = TextAlign.right;
          alignment = Alignment.centerRight;

        }
        double fontSize = 10.sp;
        double lineHeight = 1.2.h;
        if (element.innerHtml.contains('ql-size-small')) {
          fontSize = 10.sp;
          lineHeight = 10.h / 10.h;
        } else if (element.innerHtml.contains('ql-size-large')) {
          fontSize = 18.sp;
          lineHeight = 24.h / 18.h;
        } else if (element.innerHtml.contains('ql-size-huge')) {
          fontSize = 32;
          lineHeight = 32.h / 32.h;
        }

        // Determine if the parent is <ul> or <ol>
        bool isOrderedList = element.parent?.localName == 'ol';

        // List marker
        String marker;
        if (isOrderedList) {
          // For ordered lists
          int index = element.parent?.children.indexOf(element) ?? 0;
          marker ='${index + 1}. ';
        } else {
          // For unordered lists
          marker ='\u2022 ';
        }

        return  Align(alignment: alignment,
          child: RichText(
            textAlign: textAlign,
            text: TextSpan(
              text: marker,
                style: TextStyle(
                  fontSize: fontSize,
                  height: lineHeight,
                  color: ColorThemeEtamkawa.textDark
                ),
              children: [

                TextSpan(
                  text: element.text,
                  style: TextStyle(
                    fontSize: fontSize,
                    height: lineHeight,
                      color: ColorThemeEtamkawa.textDark,
                    fontWeight: element.innerHtml.startsWith('<strong')
                        ? FontWeight.bold
                        : FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
        );
      }
      return null;
    },
  );
  return richText;
}