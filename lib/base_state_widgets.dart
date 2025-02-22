import 'core/helpers/imports_helper.dart';

abstract class BasePageStatelessScreen extends StatelessWidget {
  const BasePageStatelessScreen({super.key});

  Widget buildView(BuildContext context);

  @override
  Widget build(BuildContext context) {
    return CommonLoader(
      isLoading: Provider.of<LoaderProvider>(context).getIsLoading,
      child:  buildView(context),
    );
  }
}

abstract class BasePageStatefulScreen extends StatefulWidget {
  const BasePageStatefulScreen({super.key});
}

abstract class BaseStateful<T extends BasePageStatefulScreen> extends State<T> {
  @override
  void initState() {
    super.initState();
  }

  Widget buildView(BuildContext context);

  @override
  Widget build(BuildContext context) {
    return CommonLoader(
      isLoading: Provider.of<LoaderProvider>(context).getIsLoading,
      // Provider.of<LoaderProvider>(context).getIsLoading,
      child: buildView(context),
    );
  }
}
