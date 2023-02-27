import 'package:flutter/material.dart';

Widget Story(String img) {
  return Image(
    width: 125,
    height: 125,
    image: AssetImage(img),
  );
}
