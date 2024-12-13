import 'package:flutter/material.dart';

class Dimensions {
  static const double tinySize = 4;
  static const double smallSize = 8;
  static const double mediumSize = 16;
  static const double largeSize = 24;
  static const double desktopLargeSize = largeSize * 2;
  static const double pageInsetSize = 20;
  static const double lowElevation = 2;

  static const double mediumElevation = 5;

  static const double largeElevation = 10;
  static const double massiveSize = 56;
  static const double rounded = 10;
  static const Size minimumButtonSize = Size(100, 0);
  static const double splashRadius = 27;

  static const EdgeInsets buttonPadding = EdgeInsets.symmetric(
    horizontal: 20,
    vertical: 12,
  );

  static const EdgeInsets desktopButtonPadding = EdgeInsets.symmetric(
    horizontal: Dimensions.largeSize,
    vertical: Dimensions.mediumSize * 1.25,
  );
  static const EdgeInsets mediumAllInsets = EdgeInsets.all(mediumSize);
  static const EdgeInsets pageInsets = EdgeInsets.all(pageInsetSize);
  static const EdgeInsets pageInsetsHorizontal = EdgeInsets.symmetric(horizontal: pageInsetSize);
  static const EdgeInsets pageInsetsVertical = EdgeInsets.symmetric(vertical: pageInsetSize);
  static BorderRadius get buttonBorderRadius => BorderRadius.circular(29);
  static BorderRadius get smallRadius => BorderRadius.circular(8);
  static BorderRadius get containerRadius => BorderRadius.circular(6);
  static EdgeInsets mediumInsets([List<Orientations>? orientations]) => _applyOrientations(mediumSize, orientations);
  static EdgeInsets largeInsets([List<Orientations>? orientations]) => _applyOrientations(largeSize, orientations);
  static EdgeInsets smallInsets([List<Orientations>? orientations]) => _applyOrientations(smallSize, orientations);
  static EdgeInsets tinyInsets([List<Orientations>? orientations]) => _applyOrientations(tinySize, orientations);

  static EdgeInsets _applyOrientations(double size, [List<Orientations>? orientations]) {
    var insets = EdgeInsets.zero;
    for (final o in orientations ?? Orientations.values) {
      if (o == Orientations.top) {
        insets = insets.copyWith(top: size);
      } else if (o == Orientations.bottom) {
        insets = insets.copyWith(bottom: size);
      } else if (o == Orientations.left) {
        insets = insets.copyWith(left: size);
      } else {
        insets = insets.copyWith(right: size);
      }
    }
    return insets;
  }
}

enum Orientations {
  top,
  bottom,
  left,
  right;

  static List<Orientations> get horizontal => [Orientations.left, Orientations.right];
  static List<Orientations> get vertical => [Orientations.top, Orientations.bottom];
}

class Shapes {
  static RoundedRectangleBorder buildRoundedShape({Color color = Colors.white, double borderSize = 1.0}) =>
      RoundedRectangleBorder(
        borderRadius: Dimensions.containerRadius,
        side: BorderSide(color: color, width: borderSize),
      );
}
