import 'package:birex/presentation/theme/dimension.dart';
import 'package:flutter/material.dart';

class WidgetSeparator extends StatelessWidget {
  const WidgetSeparator.medium({super.key, Axis? orientation})
      : distance = Dimensions.mediumSize,
        axis = orientation ?? Axis.vertical;

  const WidgetSeparator.small({super.key, Axis? orientation})
      : distance = Dimensions.smallSize,
        axis = orientation ?? Axis.vertical;

  const WidgetSeparator.tiny({super.key, Axis? orientation})
      : distance = Dimensions.tinySize,
        axis = orientation ?? Axis.vertical;

  const WidgetSeparator.large({super.key, Axis? orientation})
      : distance = Dimensions.largeSize,
        axis = orientation ?? Axis.vertical;
  final double distance;
  final Axis axis;

  @override
  Widget build(BuildContext context) {
    return distance.spacer(axis: axis);
  }
}

extension LayoutProvider on double {
  Widget spacer({Axis axis = Axis.vertical}) {
    return SizedBox(
      width: axis == Axis.horizontal ? this : null,
      height: axis == Axis.vertical ? this : null,
    );
  }

  EdgeInsets get padding => EdgeInsets.all(this);
  EdgeInsets get horizontalPadding => EdgeInsets.symmetric(horizontal: this);
  EdgeInsets get verticalPadding => EdgeInsets.symmetric(vertical: this);
}
