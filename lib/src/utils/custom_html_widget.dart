import 'package:html/dom.dart' as dom;
import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';

// Custom styling function
Widget customListStyle(dom.Element children, bool isOrderedList, {String? listStyle}) {
  return _buildListItem(children, isOrderedList, listStyle);
}

Widget _buildListItem(dom.Element element, bool isOrderedList, String? listStyle) {
  if (element is Text) {
    return Padding(
      padding: EdgeInsets.only(
        left: isOrderedList || listStyle != null ? 18.0 : 0.0, // Adjust padding based on list type and custom style
      ),
      child: Text(element.text),
    );
  } else if (element is dom.Node) {
    return customListStyle(element, isOrderedList, listStyle: listStyle);
  } else {
    return Text('Unsupported node type');
  }
}

// Example usage
HtmlWidget customHtmlWidget(String html) {
  final richText = HtmlWidget(html,
      customWidgetBuilder: (element) {
        if (element.localName == 'ul') {
          final String? listStyle = element.attributes['data-list-style'];
          return customListStyle(element, false, listStyle: listStyle);
        } else if (element.localName == 'ol') {
          return customListStyle(element, true);
        } else{
          return null;
        }
      }
  );
  return richText;
}