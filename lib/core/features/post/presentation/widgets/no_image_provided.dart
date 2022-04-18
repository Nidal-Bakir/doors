import 'package:flutter/material.dart';

class NoImageProvided extends StatelessWidget {
  final double? height;
  final double? width;
  const NoImageProvided({Key? key, this.height, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      color: Colors.grey[300],
      child: Center(
        child: Icon(
          Icons.image_not_supported_rounded,
          size: 30,
          color: Colors.grey[700],
        ),
      ),
    );
  }
}
