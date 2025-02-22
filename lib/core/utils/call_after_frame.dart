import 'package:flutter/material.dart';

void callAfterFrame(VoidCallback callback) {
  WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
    callback();
  });
}
