import 'package:bondproj/utility/my_constant.dart';
import 'package:flutter/material.dart';

class ShowTitle extends StatelessWidget {
  final String title;
  final TextStyle? textStyle;
  const ShowTitle({Key? key, required this.title, this.textStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle myTextStyle = MyConstant().h3Style();
    if (textStyle != null) {
      myTextStyle = textStyle!;
    }
    return Text(title, style: myTextStyle,);
  }
}
