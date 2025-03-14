import 'package:flutter/material.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({
    required this.title,
    required this.slivers,
    this.actions = const [],
    this.roundedAppBar = true,
    super.key,
  });

  final String title;
  final List<Widget> slivers;
  final List<Widget> actions;
  final bool roundedAppBar;

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  late final ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: DecoratedBox(
        decoration: BoxDecoration(color: Theme.of(context).scaffoldBackgroundColor),
        child: CustomScrollView(
          controller: scrollController,
          slivers: [
            SliverAppBar.large(
              backgroundColor: Theme.of(context).secondaryHeaderColor,
              title: Text(widget.title),
              actions: widget.actions,
              shape: widget.roundedAppBar
                  ? const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    )
                  : null,
            ),
            ...widget.slivers,
          ],
        ),
      ),
    );
  }
}
