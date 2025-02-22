import 'package:movie_app/core/helpers/imports_helper.dart';
import 'package:skeletonizer/skeletonizer.dart';

class CommonBaseShimmer extends StatelessWidget {
  final bool isLoading;
  final Widget child;

  const CommonBaseShimmer(
      {super.key, required this.isLoading, required this.child});

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      containersColor: Colors.grey[300],
      enabled: isLoading,
      child: child,
    );
  }
}
