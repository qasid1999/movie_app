import '../helpers/imports_helper.dart';

class CommonLoader extends StatelessWidget {
  final Widget child;
  final bool isLoading;

  const CommonLoader({super.key, required this.isLoading, required this.child});

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      opacity: 0.5,
      color: context.onPrimaryColor,
      progressIndicator: Center(
        child: SpinKitWaveSpinner(
          trackColor: context.primaryColor,
          waveColor: context.primaryColor,
          color: context.primaryColorLight,
          size: 50,
        ),
      ),
      child: child,
    );
  } 
}
