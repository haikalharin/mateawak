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
  final richText = HtmlWidget(html, customWidgetBuilder: (element) {
    TextAlign textAlign = TextAlign.left;
    Alignment alignment = Alignment.centerLeft;
    double fontSize = 12.sp;
    double lineHeight = 1.h;

    if (element.localName == 'li') {
      // Determine if the parent is <ul> or <ol>
      bool isOrderedList = element.parent?.localName == 'ol';

      // List marker
      String marker;
      if (isOrderedList) {
        // For ordered lists
        int index = element.parent?.children.indexOf(element) ?? 0;
        marker = '${index + 1}. ';
      } else {
        // For unordered lists
        marker = '\u2022 ';
      }
      return Align(
        alignment: alignment,
        child: RichText(
          textAlign: textAlign,
          text: TextSpan(children: []),
        ),
      );
    } else if (element.localName == 'p') {
      List<InlineSpan> listSpan = [];


      if (element.attributes.isNotEmpty) {
        if (element.attributes.values.first.contains('ql-align-center')) {
          textAlign = TextAlign.center;
          alignment = Alignment.center;
        } else if (element.attributes.values.first
            .contains('ql-align-justify')) {
          textAlign = TextAlign.justify;
          alignment = Alignment.centerLeft;
        } else if (element.attributes.values.first.contains('ql-align-right')) {
          textAlign = TextAlign.right;
          alignment = Alignment.centerRight;
        }
      }
      if (element.nodes.isNotEmpty) {
        for (var element in element.nodes) {
          double fontSize = 12.sp;
          double lineHeight = 1.h;
          FontStyle fontStyle = FontStyle.normal;
          TextDecoration textDecoration = TextDecoration.none;
          FontWeight fontWeight = FontWeight.normal;
          if (element.toString() == '<html strong>') {
            fontWeight = FontWeight.bold;
            if (element.attributes.isNotEmpty) {
              if (element.attributes.values.first.contains('ql-size-small')) {
                fontSize = 9.sp;
                lineHeight = 9.h / 9.h;
              } else if (element.attributes.values.first
                  .contains('ql-size-large')) {
                fontSize = 20.sp;
                lineHeight = 20.h / 20.h;
              } else if (element.attributes.values.first
                  .contains('ql-size-huge')) {
                fontSize = 32;
                lineHeight = 32.h / 32.h;
              }
            }
          } else if (element.toString() == '<html span>') {
            if (element.attributes.isNotEmpty) {
              if (element.attributes.values.first.contains('ql-size-small')) {
                fontSize = 9.sp;
                lineHeight = 9.h / 9.h;
              } else if (element.attributes.values.first
                  .contains('ql-size-large')) {
                fontSize = 24.sp;
                lineHeight = 24.h / 24.h;
              } else if (element.attributes.values.first
                  .contains('ql-size-huge')) {
                fontSize = 32;
                lineHeight = 32.h / 32.h;
              }
            }
          } else {
            if (element.attributes.isNotEmpty) {
              if (element.attributes.values.first.contains('ql-size-small')) {
                fontSize = 9.sp;
                lineHeight = 9.h / 9.h;
              } else if (element.attributes.values.first
                  .contains('ql-size-large')) {
                fontSize = 24.sp;
                lineHeight = 24.h / 24.h;
              } else if (element.attributes.values.first
                  .contains('ql-size-huge')) {
                fontSize = 32;
                lineHeight = 32.h / 32.h;
              }
            }
          }
          if (element.nodes.isNotEmpty) {
            for (var element in element.nodes) {
              if (element.toString() == '<html em>') {
                fontStyle = FontStyle.italic;
              } else if (element.toString() == '<html u>') {
                textDecoration = TextDecoration.underline;
              }
              if (element.nodes.isNotEmpty) {
                for (var element in element.nodes) {
                  if (element.toString() == '<html u>') {
                    textDecoration = TextDecoration.underline;
                  }

                  listSpan.add(
                    TextSpan(
                      text: element.text,
                      style: TextStyle(
                        fontSize: fontSize,
                        fontStyle: fontStyle,
                        decoration: textDecoration,
                        height: lineHeight,
                        color: ColorThemeEtamkawa.textDark,
                        fontWeight: fontWeight,
                      ),
                    ),
                  );
                }
              } else {
                listSpan.add(
                  TextSpan(
                    text: element.text,
                    style: TextStyle(
                      fontSize: fontSize,
                      fontStyle: fontStyle,
                      decoration: textDecoration,
                      height: lineHeight,
                      color: ColorThemeEtamkawa.textDark,
                      fontWeight: fontWeight,
                    ),
                  ),
                );
              }
            }
          } else {
            listSpan.add(
              TextSpan(
                text: element.text,
                style: TextStyle(
                  fontSize: fontSize,
                  fontStyle: fontStyle,
                  decoration: textDecoration,
                  height: lineHeight,
                  color: ColorThemeEtamkawa.textDark,
                  fontWeight: fontWeight,
                ),
              ),
            );
          }
        }
      }

      return Align(
        alignment: alignment,
        child: RichText(
          textAlign: textAlign,
          text: TextSpan(children: listSpan),
        ),
      );
    }
    return null;
  });
  return richText;
}
