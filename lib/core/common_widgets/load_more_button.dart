import 'package:movie_app/core/helpers/imports_helper.dart';

import 'common_spinkit.dart';

class LoadMoreButton extends StatelessWidget {
  final VoidCallback onClick;
  final String? btnText;

  const LoadMoreButton({super.key, required this.onClick, this.btnText});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: Consumer<LoaderProvider>(builder: (context, loaderProvider, __) {
        return loaderProvider.getIsRefreshed
            ? const Center(child: CommonSpinkit())
            : Center(
                child: TextButton(
                  onPressed: onClick,
                  child: Text(
                    btnText ?? "Load more",
                  ),
                ),
              );
      }),
    );
  }
}
