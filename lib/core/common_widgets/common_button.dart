import 'package:flutter_svg/flutter_svg.dart';
import '../helpers/imports_helper.dart';

class CommonElevatedButton extends StatelessWidget {
  final String text;
  final Color? textColor;
  final Color? bgColor;
  final VoidCallback onClick;
  final double? height;
  final double? width;
  final String? icon;

  const CommonElevatedButton(
      {super.key,
      required this.text,
      this.textColor,
      required this.onClick,
      this.bgColor,
      this.height,
      this.width,
      this.icon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? containerHeight50,
      width: width ?? double.infinity,
      child: ElevatedButton(
          style: context.elevatedButtonThemeData.style!.copyWith(
            elevation: const WidgetStatePropertyAll(15),
            shadowColor: WidgetStatePropertyAll(context.shadowColor),
            backgroundColor:
                WidgetStateProperty.all(bgColor ?? context.primaryColor),
            shape: WidgetStateProperty.all(
              RoundedRectangleBorder(borderRadius: borderRoundness40),
            ),
          ),
          onPressed: onClick,
          child: icon != null
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    icon == null
                        ? const SizedBox.shrink()
                        : SvgPicture.asset(
                            icon!,
                            color: context.onPrimaryColor,
                            height: 18.h,
                            width: 18.w,
                          ),
                    icon == null ? const SizedBox.shrink() : width5,
                    ElevatedButtonText(
                      text: text,
                      textColor: textColor ?? context.onPrimaryColor,
                    )
                  ],
                )
              : ElevatedButtonText(
                  text: text,
                  textColor: textColor ?? context.onPrimaryColor,
                )),
    );
  }
}
