import 'dart:ui';

import 'package:flutter/cupertino.dart';

const Color kLightBlue = Color(0xff53CFF6);
const Color kDarkBlue = Color(0xff5653F6);

const Decoration kSplashPageDecoration = BoxDecoration(
  gradient: LinearGradient(
    colors: [kLightBlue, kDarkBlue],
    begin: Alignment(0.0, -1.0),
    end: Alignment(0.0, 1.0),
  ),
);
const Decoration kHomePageDecoration = BoxDecoration(
  gradient: LinearGradient(
    colors: [kLightBlue, kDarkBlue],
    begin: Alignment(0.0, -1.0),
    end: Alignment(0.0, 0.5),
  ),
);
