import 'package:flutter/cupertino.dart';
import 'package:medical_consultation/constants/colors.dart';

class TextStyles {
  static const regular36 = TextStyle(
    fontSize: 36,
  );
  static const regular32 = TextStyle(
    fontSize: 32,
  );

  static const regular24 = TextStyle(
    fontSize: 24,
  );

  static const regular22 = TextStyle(
    fontSize: 22,
  );

  static const regular20 = TextStyle(
    fontSize: 20,
  );

  static const regular18 = TextStyle(
    fontSize: 18,
  );

  static const regular16 = TextStyle(
    fontSize: 16,
  );

  static const regular14 = TextStyle(
    fontSize: 14,
  );

  static const regular12 = TextStyle(
    fontSize: 12,
  );

  static const regular10 = TextStyle(
    fontSize: 10,
  );

  static const bold10 = TextStyle(fontSize: 10, fontWeight: FontWeight.w800);

  static const bold12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w800,
  );

  static const bold14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w800,
  );

  static const bold16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w800,
  );

  static const bold18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w800,
  );

  static const bold20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w800,
  );

  static const bold22 = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w800,
  );

  static const bold24 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w800,
  );
  static const bold28 = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w800,
  );

  static const semibold12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
  );

  static const semibold14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );

  static const semibold16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  static const semibold18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

  static const semibold20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );

  static const semibold22 = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w600,
  );

  static const semibold24 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );
}

extension TextStyleExt on TextStyle {
  TextStyle textColor() => withColor(AppColors.text());

  TextStyle withColor(Color color) => copyWith(color: color);

  TextStyle withAccent() => withColor(AppColors.accent());

  TextStyle withPrimary() => withColor(AppColors.primary());

  TextStyle withPositive() => withColor(AppColors.positive());

  TextStyle withNegative() => withColor(AppColors.negative());

  TextStyle withFadeText() => withColor(AppColors.fadeText());
}
