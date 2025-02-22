import 'package:movie_app/core/helpers/imports_helper.dart';
import 'package:flutter/cupertino.dart';

class CommonSpinkit extends StatelessWidget {
  final double? size;
  const CommonSpinkit({super.key, this.size});

  @override
  Widget build(BuildContext context) {
    return CupertinoActivityIndicator(
      radius: size ?? 15.h,
      color: context.secondaryColor,
    );
  }
}