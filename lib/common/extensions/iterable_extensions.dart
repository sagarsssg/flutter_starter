import 'package:flutter/material.dart';

extension IterableExtensions on Iterable<Widget> {
  Iterable<Widget> separator(Widget element) sync* {
    final iterator = this.iterator;
    if (iterator.moveNext()) {
      yield iterator.current;
      while (iterator.moveNext()) {
        yield element;
        yield iterator.current;
      }
    }
  }
}
