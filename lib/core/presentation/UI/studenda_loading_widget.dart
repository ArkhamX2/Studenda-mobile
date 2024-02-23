import 'package:flutter/material.dart';

class StudendaLoadingWidget extends StatelessWidget {
  final double? width;
  final double? height;
  const StudendaLoadingWidget([this.width = 40, this.height = 40]);

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/gif/studenda_loading.gif',width: width, height: height,);
  }
}
