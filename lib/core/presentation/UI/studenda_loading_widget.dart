import 'package:flutter/material.dart';

class StudendaLoadingWidget extends StatelessWidget {
  final double? width;
  final double? height;
  const StudendaLoadingWidget([this.width = 100, this.height = 100]);

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/gif/studenda_loading.apng',width: width, height: height,);
  }
}
