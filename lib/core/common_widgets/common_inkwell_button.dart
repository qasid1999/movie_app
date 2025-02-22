import 'package:flutter/material.dart';
import 'package:movie_app/core/extentions/ui_theme_extention.dart';
import 'package:movie_app/core/utils/values_utils.dart';

class CommonInkWellButton extends StatelessWidget {
  final VoidCallback onClick;
  final Widget child;
  final Decoration? decoration;
  final double? height;
  final double? width;
  final Color? splashColor;
  final BorderRadius? shadowBorderRadiues;
  const CommonInkWellButton({
    super.key,
    required this.onClick,
    required this.child,
    this.decoration,
    this.height,
    this.width,
    this.splashColor,
    this.shadowBorderRadiues,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      surfaceTintColor: Colors.transparent,
      color: Colors.transparent,
      child: Ink(
        width: width,
        height: height,
        decoration: decoration,
        child: InkWell(
          focusColor: splashColor ?? context.primaryColorLight.withOpacity(0.1),
          hoverColor: splashColor ?? context.primaryColorLight.withOpacity(0.1),
          highlightColor: splashColor ?? context.primaryColorLight.withOpacity(0.1),
          splashColor: splashColor ?? context.primaryColorLight.withOpacity(0.1),
          borderRadius: shadowBorderRadiues ?? borderRoundness10, // Rounded corners
          onTap: onClick,
          child: child,
        ),
      ),
    );
  }
}
