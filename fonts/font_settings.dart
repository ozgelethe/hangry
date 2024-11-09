import 'package:flutter/material.dart';

enum FontWeightKey { regular, medium, semibold, bold, extrabold }

const Map<FontWeightKey, FontWeight> fontWeightMap = {
  FontWeightKey.regular: FontWeight.w400,
  FontWeightKey.medium: FontWeight.w500,
  FontWeightKey.semibold: FontWeight.w600,
  FontWeightKey.bold: FontWeight.w700,
  FontWeightKey.extrabold: FontWeight.w800,
};

FontWeight getFontWeight(FontWeightKey key) {
  return fontWeightMap[key]!;
}
