import '../helpers/imports_helper.dart';

class CustomAbsorbPointer extends StatelessWidget {
 final Widget child; final bool isAbsorbing;
  const CustomAbsorbPointer({
    super.key, required this.child, required this.isAbsorbing,
  });

  @override
  Widget build(BuildContext context) {
    return AbsorbPointer(
      absorbing: isAbsorbing,
      child: child,
    );
  }
}
