import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:xuxu_ui/src/builder/builder.dart';

class XuListBuilder extends XuBuilder<Widget> {

  Widget Function(BuildContext, int) itemBuilder;
  int _itemCount;
  bool _shrinkWrap = false;
  double _cacheExtent;
  EdgeInsetsGeometry _padding;
  ScrollController _controller;
  ScrollPhysics _physics;
  bool _reverse = false;
  Axis _scrollDirection = Axis.vertical;
  bool _primary;
  Clip _clipBehavior = Clip.hardEdge;
  double _itemExtent;
  bool _addAutomaticKeepAlives = true;
  bool _addRepaintBoundaries = true;
  bool _addSemanticIndexes = true;
  ScrollViewKeyboardDismissBehavior _keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual;
  int _semanticChildCount;
  DragStartBehavior _dragStartBehavior = DragStartBehavior.start;
  
  XuListBuilder({@required this.itemBuilder});

  @override
  Widget create({Key key}) {
    return ListView.builder(
      itemCount: _itemCount,
      key: key,
      itemBuilder: itemBuilder,
      shrinkWrap: _shrinkWrap,
      cacheExtent: _cacheExtent,
      padding: _padding,
      controller: _controller,
      physics: _physics,
      reverse: _reverse,
      scrollDirection: _scrollDirection,
      primary: _primary,
      clipBehavior: _clipBehavior,
      itemExtent: _itemExtent,
      addAutomaticKeepAlives: _addAutomaticKeepAlives,
      addRepaintBoundaries: _addRepaintBoundaries,
      addSemanticIndexes: _addSemanticIndexes,
      keyboardDismissBehavior: _keyboardDismissBehavior,
      semanticChildCount: _semanticChildCount,
      dragStartBehavior: _dragStartBehavior,
    );
  }
  
  ///
  /// Set item count
  ///
  XuListBuilder count(int count) => this.._itemCount = count;
  XuListBuilder wrap(bool shrinWrap) => this.._shrinkWrap = shrinWrap;
  XuListBuilder cacheExtent(double cache) => this.._cacheExtent = cache;
  XuListBuilder pOnly({double left = 0.0,double right = 0.0,double top = 0.0,double bottom = 0.0}) => this.._padding = EdgeInsets.only(top: top, bottom: bottom, left: left, right: right);
  XuListBuilder pAll(double all) => this.._padding = EdgeInsets.all(all);    
  XuListBuilder controller(ScrollController controller) => this.._controller = controller;
  XuListBuilder physics(ScrollPhysics physics) => this.._physics = physics;
  XuListBuilder reverse(bool reverse) => this.._reverse = reverse;
  XuListBuilder direction(Axis direction) => this.._scrollDirection = direction;
  XuListBuilder primary(bool primary) => this.._primary = primary;
  XuListBuilder clip(Clip clip) => this.._clipBehavior = clip;
  XuListBuilder itemExtent(double extent) => this.._itemExtent = extent;
  XuListBuilder addAutomaticKeepAlives(bool automatic) => this.._addAutomaticKeepAlives = automatic;
  XuListBuilder addRepaintBoundaries(bool automatic) => this.._addRepaintBoundaries = automatic;
  XuListBuilder addSemanticIndexes(bool automatic) => this.._addSemanticIndexes = automatic;
  XuListBuilder keyboardBehavior(ScrollViewKeyboardDismissBehavior behavior) => this.._keyboardDismissBehavior = behavior;
  XuListBuilder semanticChildCount(int count) => this.._semanticChildCount = count;
  XuListBuilder startBehavior(DragStartBehavior behavior) => this.._dragStartBehavior = behavior;

}
