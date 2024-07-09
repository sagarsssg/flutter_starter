import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Extensions on the num to return widget
extension SB on num {
  /// Return the [SizedBox] widget with the given width after converted to [sp]
  SizedBox sbw() {
    return SizedBox(
      width: sp,
    );
  }

  /// Return the [SizedBox] widget with the given height after converted to [sp]
  SizedBox sbh() {
    return SizedBox(
      height: sp,
    );
  }
}
