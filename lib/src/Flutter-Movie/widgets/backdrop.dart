import 'package:flutter/material.dart';

///
/// https://github.com/o1298098/Flutter-Movie/blob/master/lib/widgets/backdrop.dart

enum BackDropType {
  base,
  listView,
  singleScroll,
}

class BackDrop extends StatefulWidget {
  final Widget? backChild;
  final List<Widget>? frontChildren;
  final Widget? frontChild;
  final Color? frontBackGroundColor;
  final double backLayerHeight;
  final BackDropType backDropType;
  const BackDrop(
      {Key? key,
      @required this.backChild,
			this.frontChildren,
			this.frontChild,
      this.frontBackGroundColor,
      this.backLayerHeight = 0.0,
      this.backDropType = BackDropType.listView})
      : super(key: key);
  @override
  BackDropState createState() => BackDropState();
}

class BackDropState extends State<BackDrop> with TickerProviderStateMixin {
  late GlobalKey key;
  final ClampingScrollPhysics _clampingScrollPhysics =
      const ClampingScrollPhysics();
  @override
  void initState() {
    key = GlobalKey();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void didUpdateWidget(BackDrop oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context);
    double _initialChildSize =
        1 - (widget.backLayerHeight / _mediaQuery.size.height);
    return Stack(
      children: <Widget>[
        Container(
          key: key,
          child: widget.backChild,
        ),
        DraggableScrollableSheet(
            initialChildSize: _initialChildSize,
            minChildSize: _initialChildSize,
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                padding: const EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  color: widget.frontBackGroundColor,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                child: Theme(
                    data: Theme.of(context).copyWith(
                        colorScheme: ColorScheme.fromSwatch()
                            .copyWith(secondary: Colors.transparent)),
                    child: _buildBody(context, scrollController)),
              );
            }),
      ],
    );
  }

  Widget _buildBody(BuildContext context, ScrollController scrollController) {
    if (widget.backDropType == BackDropType.listView) {
      return ListView.builder(
        controller: scrollController,
        physics: _clampingScrollPhysics,
        itemBuilder: (_, index) => widget.frontChildren![index],
        itemCount: widget.frontChildren?.length ?? 0,
      );
    }
    if (widget.backDropType == BackDropType.singleScroll) {
      return SingleChildScrollView(
				child: widget.frontChild,
			);
    }
    return widget.frontChild??Container();
  }
}
