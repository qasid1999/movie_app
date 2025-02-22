import 'package:movie_app/core/helpers/imports_helper.dart';

class DisplayLargeText extends StatelessWidget {
  final String text;
  final Color? textColor;
  final int? maxLines;
  final TextAlign? textAlignment;

  const DisplayLargeText(
      {super.key,
      required this.text,
      this.textColor,
      this.maxLines,
      this.textAlignment});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.displayLarge!.copyWith(
          color: textColor,
          overflow: maxLines != null ? TextOverflow.ellipsis : null),
      textAlign: textAlignment,
      softWrap: maxLines != null ? true : null,
      maxLines: maxLines,
    );
  }
}

class DisplayMediumText extends StatelessWidget {
  final String text;
  final Color? textColor;
  final int? maxLines;
  final TextAlign? textAlignment;

  const DisplayMediumText(
      {super.key,
      required this.text,
      this.textColor,
      this.maxLines,
      this.textAlignment});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.displayMedium!.copyWith(
          color: textColor,
          overflow: maxLines != null ? TextOverflow.ellipsis : null),
      textAlign: textAlignment,
      softWrap: maxLines != null ? true : null,
      maxLines: maxLines,
    );
  }
}

class DisplaySmallText extends StatelessWidget {
  final String text;
  final Color? textColor;
  final int? maxLines;
  final TextAlign? textAlignment;

  const DisplaySmallText(
      {super.key,
      required this.text,
      this.textColor,
      this.maxLines,
      this.textAlignment});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.displaySmall!.copyWith(
          color: textColor,
          overflow: maxLines != null ? TextOverflow.ellipsis : null),
      textAlign: textAlignment,
      softWrap: maxLines != null ? true : null,
      maxLines: maxLines,
    );
  }
}

class SectionHeading extends StatelessWidget {
  final String text;
  final Color? textColor;
  final int? maxLines;
  final TextAlign? textAlignment;

  const SectionHeading(
      {super.key,
      required this.text,
      this.textColor,
      this.maxLines,
      this.textAlignment});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.headlineLarge!.copyWith(
          color: textColor,
          overflow: maxLines != null ? TextOverflow.ellipsis : null),
      textAlign: textAlignment,
      softWrap: maxLines != null ? true : null,
      maxLines: maxLines,
    );
  }
}

class HeadingMediumText extends StatelessWidget {
  final String text;
  final Color? textColor;
  final int? maxLines;
  final TextAlign? textAlignment;

  const HeadingMediumText(
      {super.key,
      required this.text,
      this.textColor,
      this.maxLines,
      this.textAlignment});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.headlineMedium!.copyWith(
          color: textColor,
          overflow: maxLines != null ? TextOverflow.ellipsis : null),
      textAlign: textAlignment,
      softWrap: maxLines != null ? true : null,
      maxLines: maxLines,
    );
  }
}

class CardHeadingText extends StatelessWidget {
  final String text;
  final Color? textColor;
  final int? maxLines;
  final TextAlign? textAlignment;

  const CardHeadingText(
      {super.key,
      required this.text,
      this.textColor,
      this.maxLines,
      this.textAlignment});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.headlineSmall!.copyWith(
          color: textColor,
          overflow: maxLines != null ? TextOverflow.ellipsis : null),
      textAlign: textAlignment,
      softWrap: maxLines != null ? true : null,
      maxLines: maxLines,
    );
  }
}

class SubHeadingText extends StatelessWidget {
  final String text;
  final Color? textColor;
  final int? maxLines;
  final TextAlign? textAlignment;

  const SubHeadingText(
      {super.key,
      required this.text,
      this.textColor,
      this.maxLines,
      this.textAlignment});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.titleMedium!.copyWith(
          fontWeight: FontWeight.w600,
          fontSize: 17,
          color: textColor,
          overflow: maxLines != null ? TextOverflow.ellipsis : null),
      textAlign: textAlignment,
      softWrap: maxLines != null ? true : null,
      maxLines: maxLines,
    );
  }
}

class PriceUnitText extends StatelessWidget {
  final String text;
  final Color? textColor;
  final int? maxLines;
  final TextAlign? textAlignment;

  const PriceUnitText(
      {super.key,
      required this.text,
      this.textColor,
      this.maxLines,
      this.textAlignment});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.headlineMedium!.copyWith(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: textColor,
          overflow: maxLines != null ? TextOverflow.ellipsis : null),
      textAlign: textAlignment,
      softWrap: maxLines != null ? true : null,
      maxLines: maxLines,
    );
  }
}

class PriceNumberText extends StatelessWidget {
  final String text;
  final Color? textColor;
  final int? maxLines;
  final TextAlign? textAlignment;

  const PriceNumberText(
      {super.key,
      required this.text,
      this.textColor,
      this.maxLines,
      this.textAlignment});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.headlineMedium!.copyWith(
          fontSize: 24,
          color: textColor,
          overflow: maxLines != null ? TextOverflow.ellipsis : null),
      textAlign: textAlignment,
      softWrap: maxLines != null ? true : null,
      maxLines: maxLines,
    );
  }
}

class BodyText extends StatelessWidget {
  final String text;
  final Color? textColor;
  final int? maxLines;
  final TextAlign? textAlignment;
  final TextDecoration? textDecoration;

  const BodyText(
      {super.key,
      required this.text,
      this.textColor,
      this.maxLines,
      this.textAlignment,
      this.textDecoration});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.bodyLarge!.copyWith(
          color: textColor,
          overflow: maxLines != null ? TextOverflow.ellipsis : null,
          decoration: textDecoration),
      textAlign: textAlignment,
      softWrap: maxLines != null ? true : null,
      maxLines: maxLines,
    );
  }
}

class BodyActiveText extends StatelessWidget {
  final String text;
  final Color? textColor;
  final int? maxLines;
  final TextAlign? textAlignment;

  const BodyActiveText(
      {super.key,
      required this.text,
      this.textColor,
      this.maxLines,
      this.textAlignment});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.bodyLarge!.copyWith(
          color: textColor,
          fontWeight: FontWeight.w500,
          overflow: maxLines != null ? TextOverflow.ellipsis : null),
      textAlign: textAlignment,
      softWrap: maxLines != null ? true : null,
      maxLines: maxLines,
    );
  }
}

class SmallBodyText extends StatelessWidget {
  final String text;
  final Color? textColor;
  final int? maxLines;
  final TextAlign? textAlignment;

  const SmallBodyText(
      {super.key,
      required this.text,
      this.textColor,
      this.maxLines,
      this.textAlignment});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.bodySmall!.copyWith(
          color: textColor,
          // fontWeight: FontWeight.w500,
          overflow: maxLines != null ? TextOverflow.ellipsis : null),
      textAlign: textAlignment,
      softWrap: maxLines != null ? true : null,
      maxLines: maxLines,
    );
  }
}

class InActiveSmallBodyText extends StatelessWidget {
  final String text;
  final Color? textColor;
  final int? maxLines;
  final TextAlign? textAlignment;

  const InActiveSmallBodyText(
      {super.key,
      required this.text,
      this.textColor,
      this.maxLines,
      this.textAlignment});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.inActiveSmallBody!.copyWith(
          color: textColor,
          overflow: maxLines != null ? TextOverflow.ellipsis : null),
      textAlign: textAlignment,
      softWrap: maxLines != null ? true : null,
      maxLines: maxLines,
    );
  }
}

class BodyMediumText extends StatelessWidget {
  final String text;
  final Color? textColor;
  final int? maxLines;
  final TextAlign? textAlignment;
  final TextDecoration? textDecoration;

  const BodyMediumText(
      {super.key,
      required this.text,
      this.textColor,
      this.maxLines,
      this.textAlignment,
      this.textDecoration});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.bodyMedium!.copyWith(
          color: textColor,
          overflow: maxLines != null ? TextOverflow.ellipsis : null,
          decoration: textDecoration),
      textAlign: textAlignment,
      softWrap: maxLines != null ? true : null,
      maxLines: maxLines,
    );
  }
}

class InActiveBodyText extends StatelessWidget {
  final String text;
  final Color? textColor;
  final int? maxLines;
  final TextAlign? textAlignment;
  final TextDecoration? textDecoration;

  const InActiveBodyText(
      {super.key,
      required this.text,
      this.textColor,
      this.maxLines,
      this.textAlignment,
      this.textDecoration});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.inActiveBody!.copyWith(
          color: textColor,
          overflow: maxLines != null ? TextOverflow.ellipsis : null,
          decoration: textDecoration),
      textAlign: textAlignment,
      softWrap: maxLines != null ? true : null,
      maxLines: maxLines,
    );
  }
}

class BottomBarText extends StatelessWidget {
  final String text;
  final Color? textColor;
  final int? maxLines;
  final TextAlign? textAlignment;

  const BottomBarText(
      {super.key,
      required this.text,
      this.textColor,
      this.maxLines,
      this.textAlignment});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.labelSmall!.copyWith(
          color: textColor,
          overflow: maxLines != null ? TextOverflow.ellipsis : null),
      textAlign: textAlignment,
      softWrap: maxLines != null ? true : null,
      maxLines: maxLines,
    );
  }
}

class PlaceHolderText extends StatelessWidget {
  final String text;
  final Color? textColor;
  final int? maxLines;
  final TextAlign? textAlignment;
  final TextDecoration? textDecoration;

  const PlaceHolderText(
      {super.key,
      required this.text,
      this.textColor,
      this.maxLines,
      this.textAlignment,
      this.textDecoration});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.labelMedium!.copyWith(
          color: textColor,
          overflow: maxLines != null ? TextOverflow.ellipsis : null,
          decoration: textDecoration),
      textAlign: textAlignment,
      softWrap: maxLines != null ? true : null,
      maxLines: maxLines,
    );
  }
}

class ElevatedButtonText extends StatelessWidget {
  final String text;
  final Color? textColor;
  final int? maxLines;
  final TextAlign? textAlignment;
  final TextDecoration? textDecoration;

  const ElevatedButtonText(
      {super.key,
      required this.text,
      this.textColor,
      this.maxLines,
      this.textAlignment,
      this.textDecoration});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.headlineSmall!.copyWith(
          fontSize: 13,
          fontWeight: FontWeight.w500,
          color: textColor,
          overflow: maxLines != null ? TextOverflow.ellipsis : null,
          decoration: textDecoration,
          decorationColor: textColor),
      textAlign: textAlignment,
      softWrap: maxLines != null ? true : null,
      maxLines: maxLines,
    );
  }
}

class ButtonText extends StatelessWidget {
  final String text;
  final Color? textColor;
  final int? maxLines;
  final TextAlign? textAlignment;
  final TextDecoration? textDecoration;

  const ButtonText(
      {super.key,
      required this.text,
      this.textColor,
      this.maxLines,
      this.textAlignment,
      this.textDecoration});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.headlineSmall!.copyWith(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          color: textColor,
          overflow: maxLines != null ? TextOverflow.ellipsis : null,
          decoration: textDecoration,
          decorationColor: textColor),
      textAlign: textAlignment,
      softWrap: maxLines != null ? true : null,
      maxLines: maxLines,
    );
  }
}

class HeadingSmallText extends StatelessWidget {
  final String text;
  final Color? textColor;
  final int? maxLines;
  final TextAlign? textAlignment;

  const HeadingSmallText(
      {super.key,
      required this.text,
      this.textColor,
      this.maxLines,
      this.textAlignment});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.headlineSmall!.copyWith(
          color: textColor,
          overflow: maxLines != null ? TextOverflow.ellipsis : null),
      textAlign: textAlignment,
      softWrap: maxLines != null ? true : null,
      maxLines: maxLines,
    );
  }
}

class PriceTextWidget extends StatelessWidget {
  final String? currency;
  final String value;

  const PriceTextWidget({super.key, this.currency, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          currency ?? "AED ",
          style: context.headlineMedium!.copyWith(
              color: context.primaryColor,
              fontSize: 17,
              fontWeight: FontWeight.w400),
        ),
        Text(
          value,
          style: context.headlineMedium!.copyWith(
              color: context.primaryColor,
              fontSize: 17,
              fontWeight: FontWeight.w800),
        ),
      ],
    );
  }
}

class TitleSmallText extends StatelessWidget {
  final String text;
  final Color? textColor;
  final int? maxLines;
  final TextAlign? textAlignment;

  const TitleSmallText(
      {super.key,
      required this.text,
      this.textColor,
      this.maxLines,
      this.textAlignment});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.titleSmall!.copyWith(
          fontSize: 13,
          color: textColor,
          overflow: maxLines != null ? TextOverflow.ellipsis : null),
      textAlign: textAlignment,
      softWrap: maxLines != null ? true : null,
      maxLines: maxLines,
    );
  }
}

class TitleMediumText extends StatelessWidget {
  final String text;
  final Color? textColor;
  final int? maxLines;
  final TextAlign? textAlignment;

  const TitleMediumText(
      {super.key,
      required this.text,
      this.textColor,
      this.maxLines,
      this.textAlignment});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.titleMedium!.copyWith(
          color: textColor,
          overflow: maxLines != null ? TextOverflow.ellipsis : null),
      textAlign: textAlignment,
      softWrap: maxLines != null ? true : null,
      maxLines: maxLines,
    );
  }
}

class TitleLargeText extends StatelessWidget {
  final String text;
  final Color? textColor;
  final int? maxLines;
  final TextAlign? textAlignment;

  const TitleLargeText(
      {super.key,
      required this.text,
      this.textColor,
      this.maxLines,
      this.textAlignment});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.titleLarge!.copyWith(
          color: textColor,
          overflow: maxLines != null ? TextOverflow.ellipsis : null),
      textAlign: textAlignment,
      softWrap: maxLines != null ? true : null,
      maxLines: maxLines,
    );
  }
}
