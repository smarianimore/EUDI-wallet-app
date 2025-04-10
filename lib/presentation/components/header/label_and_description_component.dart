import 'package:flutter/material.dart';

class LabelAndDescriptionComponent extends StatelessWidget {
  const LabelAndDescriptionComponent({
    required this.label,
    required this.description,
    super.key,
  });

  final String label;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _Label(label: label),
        Text(
          description.parseUnicode,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class _Label extends StatelessWidget {
  const _Label({
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: Theme.of(context).textTheme.titleSmall,
    );
  }
}

class LabelAndDescriptionWidgetComponent extends StatelessWidget {
  const LabelAndDescriptionWidgetComponent({
    required this.label,
    required this.description,
    super.key,
  });

  final String label;
  final Widget description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _Label(label: label),
        description,
      ],
    );
  }
}

extension on String {
  String get parseUnicode {
    final Pattern unicodePattern = RegExp(r'\\u([0-9A-Fa-f]{4})');
    return replaceAllMapped(
      unicodePattern,
      (unicodeMatch) {
        final hexCode = int.parse(unicodeMatch.group(1)!, radix: 16);
        final unicode = String.fromCharCode(hexCode);
        return unicode;
      },
    );
  }
}
