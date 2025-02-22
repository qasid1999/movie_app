import 'package:movie_app/core/helpers/imports_helper.dart';

class MoviesSearchScreen extends BasePageStatefulScreen {
  const MoviesSearchScreen({super.key});

  @override
  BaseStateful<MoviesSearchScreen> createState() => _MoviesSearchScreenState();
}

class _MoviesSearchScreenState extends BaseStateful<MoviesSearchScreen> {
  @override
  Widget buildView(BuildContext context) {
    return PopScope(
      onPopInvokedWithResult: (canPop, __){
        readProvider<MovieController>().disposeSearchValues();
      },
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 80.h,
          automaticallyImplyLeading: false,
          title: SizedBox(
            height: 50.h,
            child: Consumer<MovieController>(
                builder: (context, movieSearchController, __) {
              return TextFormField(
                textInputAction: TextInputAction.go,
                controller: movieSearchController.moviesSearchController,
                onTapOutside: (event) {
                  FocusScope.of(context).unfocus();
                },
                onChanged: (value) {
                  movieSearchController.onTextChange(value);
                },
                cursorColor: context.onSurfaceColor,
                decoration: InputDecoration(
                    fillColor: context.scaffoldBackgroundColor,
                    filled: true,
                    prefixIcon: const Icon(
                      Icons.search,
                    ),
                    suffixIcon: InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.close_rounded,
                      ),
                    ),
                    border: _border(),
                    enabledBorder: _border(),
                    errorBorder: _border(),
                    disabledBorder: _border(),
                    focusedBorder: _border(),
                    focusedErrorBorder: _border()),
              );
            }),
          ),
        ),
        body: Consumer<MovieController>(
          builder: (context, searchController, __) {
            return searchController.moviesSearchController.text.isNotEmpty
                ? const TopResultsWidget()
                : const CategoriesWidget();
          },
        ),
      ),
    );
  }

  OutlineInputBorder _border() {
    return OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: borderRoundness22,
    );
  }
}
