import 'package:flutter/material.dart';
import 'package:provider/single_child_widget.dart';

abstract class CalculateDrinkModule {
  final Map<String, WidgetBuilder> _routers;
  final List<SingleChildWidget>? _bindings;

  CalculateDrinkModule(
      {List<SingleChildWidget>? bindings,
      required Map<String, WidgetBuilder> routers})
      : _bindings = bindings,
        _routers = routers;

  Map<String, WidgetBuilder> get routers {
    return _routers;
  }
}
