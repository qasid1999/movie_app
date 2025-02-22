import 'package:movie_app/core/helpers/imports_helper.dart';

class DialogHelper {
  static showCommonDialog(
      {required String iconImage,
      required String headingText,
      required String descriptionText,
      String name = '',
      bool isLeftPadding = true,
      bool isOnlySvg = false,
      bool showCloseIcon = false,
      bool showImage = true,
      Widget? action}) {
    showDialog(
        context: currentContext,
        builder: (BuildContext context) {
          return Dialog(
            backgroundColor: context.surfaceColor,
            insetPadding: EdgeInsets.all(padding25),
            child: CommonDialogWidget(
                name: name,
                showImage: showImage,
                showCloseIcon: showCloseIcon,
                isOnlySvg: isOnlySvg,
                isLeftPadding: isLeftPadding,
                iconImage: iconImage,
                headingText: headingText,
                action: action,
                descriptionText: descriptionText),
          );
        });
  }
}

class CommonDialogWidget extends StatelessWidget {
  final String iconImage;
  final String headingText;
  final String descriptionText;
  final String name;
  final Widget? action;
  final bool isLeftPadding;
  final bool isOnlySvg;
  final bool showImage;
  final bool showCloseIcon;

  const CommonDialogWidget(
      {super.key,
      required this.name,
      required this.iconImage,
      required this.headingText,
      required this.descriptionText,
      required this.isLeftPadding,
      required this.isOnlySvg,
      required this.showCloseIcon,
      required this.showImage,
      this.action});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.surfaceColor,
        borderRadius: BorderRadius.circular(19),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 20.h,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(children: [
                width40,
                if (isOnlySvg) ...[
                  const Spacer(),
                  SvgPicture.asset(
                    iconImage,
                    height: containerHeight65,
                    width: containerWidth65,
                  ),
                ] else if (showImage) ...[
                  Padding(
                    padding:
                        EdgeInsets.only(left: isLeftPadding ? padding100 : 0),
                    child: Container(
                      height: 55,
                      width: 55,
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: context.primaryColor,
                          borderRadius: BorderRadius.circular(33.r)),
                      child: SvgPicture.asset(
                        iconImage,
                        color: context.onPrimaryColor,
                      ),
                    ),
                  ),
                ],
                if (action == null || showCloseIcon) ...[
                  const Spacer(),
                  Padding(
                    padding: EdgeInsets.only(bottom: padding20),
                    child: InkWell(
                      onTap: () {
                        Navigator.maybePop(context);
                      },
                      child: Icon(
                        Icons.close,
                        color: context.onSurfaceColor,
                        size: containerHeight25,
                      ),
                    ),
                  ),
                ],
              ])),
          // height20,
          HeadingMediumText(text: headingText),
          if (name.isNotEmpty) ...[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: BodyMediumText(
                text: name,
                textAlignment: TextAlign.center,
              ),
            ),
            height2
          ],
          height10,
          if (descriptionText.isNotEmpty) ...[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: BodyMediumText(
                text: descriptionText,
                textAlignment: TextAlign.center,
              ),
            ),
          ],
          height20,
          action ?? const SizedBox.shrink(),
          height25
        ],
      ),
    );
  }
}
