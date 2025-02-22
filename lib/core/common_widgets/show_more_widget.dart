import 'package:movie_app/core/helpers/imports_helper.dart';
import 'package:readmore/readmore.dart';

class CommonReadMoreWidget extends StatelessWidget {
  final String mainBody;

  const CommonReadMoreWidget({
    super.key,
    required this.mainBody,
  });

  @override
  Widget build(BuildContext context) {
    return ReadMoreText(
      mainBody,
      trimMode: TrimMode.Line,
      trimLines: 5,
      trimLength: 240,
      moreStyle: context.labelLarge!.copyWith(color: context.secondaryColor),
      lessStyle: context.labelLarge!.copyWith(color: context.secondaryColor),
      style:   TextStyle(height: 1.5, fontSize: 13,color: context.darkGrey),
      colorClickableText: context.primaryColor,
      trimCollapsedText: ' Show more',
      trimExpandedText: ' Show less',
    );
  }
}