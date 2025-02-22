import '../helpers/imports_helper.dart';
export 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'dart:math' as math;
class CommonRefreshWidget extends StatelessWidget {
  final Future<void> Function() onRefresh;
  final IndicatorController indicatorController;

  final Widget child;

  const CommonRefreshWidget({super.key, required this.onRefresh, required this.indicatorController, required this.child});

  @override
  Widget build(BuildContext context) {
    return CustomMaterialIndicator(
      onRefresh: onRefresh, // Your refresh logic
      backgroundColor: Colors.white,
      indicatorBuilder: (context, controller) {
        return Padding(
          padding: const EdgeInsets.all(6.0),
          child: CircularProgressIndicator(
            color: Colors.redAccent,
            value: controller.state.isLoading ? null : math.min(controller.value, 1.0),
          ),
        );
      },
      child: child,
    );
  }
}