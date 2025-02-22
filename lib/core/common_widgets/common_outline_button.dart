import 'package:movie_app/core/helpers/imports_helper.dart';

class CommonOutlineButton extends StatelessWidget {
  final String text;
  final Color? borderColor;
  final Color? textColor;
  final VoidCallback onClick;
  final double? borderWidth;
  final double? height;
  final double? width;
  final String? icon;

  const CommonOutlineButton({
    super.key,
    required this.text,
    this.borderColor,
    this.textColor,
    required this.onClick,
    this.borderWidth,
    this.width,
    this.height,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? screenWidth,
      height: height ?? containerHeight50,
      child: OutlinedButton(
        style: context.outlinedButtonThemeData.style!.copyWith(
          overlayColor: WidgetStateProperty.all(
            context.primaryColorLight,
          ),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(borderRadius: borderRoundness40),
          ),
          side: WidgetStateProperty.all(
            BorderSide(
              color: borderColor ?? context.borderColor,
              width: borderWidth ?? 1.5,
            ),
          ),
        ),
        onPressed: onClick,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon == null ? const SizedBox.shrink() : SvgPicture.asset(icon!),
            icon == null ? const SizedBox.shrink() : width10,
            ButtonText(
              text: text,
              textColor: textColor,
            )
          ],
        ),
      ),
    );
  }
}
