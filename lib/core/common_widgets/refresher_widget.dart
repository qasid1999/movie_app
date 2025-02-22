import '../helpers/imports_helper.dart';

class CustomSmartRefresher extends StatelessWidget {
  final Future<void> Function() onRefresh;
  final IndicatorController indicatorController;
  final Widget child;

  const CustomSmartRefresher(
      {super.key,
      required this.onRefresh,
      required this.indicatorController,
      required this.child});

  @override
  Widget build(BuildContext context) {
    return CustomMaterialIndicator(
      controller: indicatorController,

      /// delegate with configuration
      indicatorBuilder: (context, controller) {
        return Padding(
          padding: const EdgeInsets.all(9.0),
          child: CircularProgressIndicator(
            color: context.secondaryColor,
          ),
        );
      },
      onRefresh: onRefresh,
      child: child,
    );
  }
}
