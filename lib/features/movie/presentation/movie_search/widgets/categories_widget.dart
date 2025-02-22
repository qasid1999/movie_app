import 'package:movie_app/core/helpers/imports_helper.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<MovieController>(builder: (context, movieController, __) {
      return GridView.builder(
          itemCount: movieController.result.length,
          padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 30.h),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 130.h,
              crossAxisSpacing: 12.w,
              mainAxisSpacing: 0.h,
              crossAxisCount: 2),
          itemBuilder: (context, index) {
            var data = movieController.result[index];
            return InkWell(
              onTap: () {
                MovieServices.movieDetails((data.id ?? -1).toString())
                    .then((value) {
                  if (value) {
                    Navigator.pushNamed(context, RoutesPaths.movieDetails);
                  }
                });
              },
              child: Container(
                padding: EdgeInsets.only(
                  bottom: padding15,
                ),
                child: Stack(
                  children: [
                    CommonCacheNetworkImageWidget(
                      imagePath:
                          "${Constants.networkImageBaseUrl}${data.posterPath.toString() ?? ""}",
                      width: screenWidth,
                      height: containerWidth180,
                    ),
                    Positioned.fill(
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          width: screenWidth,
                          decoration: BoxDecoration(boxShadow: bottomShadow),
                          padding: EdgeInsets.all(padding15),
                          child: TitleSmallText(
                            text: data.title ?? "",
                            textColor: context.onPrimaryColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          });
    });
  }
}
