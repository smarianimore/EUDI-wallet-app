import 'package:birex/presentation/theme/dimension.dart';
import 'package:birex/presentation/theme/separator.dart';
import 'package:flutter/material.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({
    required this.title,
    required this.body,
    this.onClosed,
    super.key,
  });

  final String title;
  final void Function()? onClosed;
  final Widget Function(BuildContext context) body;

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      onClosing: () {},
      shape: Shapes.buildRoundedShape(),
      builder: (context) => SingleChildScrollView(
        padding: Dimensions.mediumSize.padding.add(MediaQuery.of(context).viewInsets),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () {
                    onClosed?.call();
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
            Dimensions.mediumSize.spacer(),
            body.call(context),
          ],
        ),
      ),
    );
  }
}
