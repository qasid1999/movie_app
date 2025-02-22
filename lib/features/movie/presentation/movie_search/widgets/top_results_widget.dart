
import 'package:movie_app/core/helpers/imports_helper.dart';

class TopResultsWidget extends StatelessWidget {
  const TopResultsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<MovieController>(
      builder: (context, movieController, __) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            height20,
            Padding(
              padding: EdgeInsets.only(left: 18.0.w),
              child: Text(
                "Top Results",
                style: context.headlineMedium,
              ),
            ),
            height5,
            const Divider(),
            height10,
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: movieController.searchedMovies.length,
                itemBuilder: (context, index) {
                  var data = movieController.searchedMovies[index];
                  return InkWell(
                    onTap: (){
                      MovieServices.movieDetails((data.id ?? -1).toString()).then((value){
                        if(value){
                          Navigator.pushNamed(context, RoutesPaths.movieDetails);
                        }
                      });
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 6.h),
                      child: Row(
                        children: [
                          CommonCacheNetworkImageWidget(
                            imagePath:
                            "${Constants.networkImageBaseUrl}${data.posterPath.toString() ?? ""}",
                            width: containerWidth120,
                            height: containerHeight100,
                          ),
                          width20,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                data.title ?? "",
                                style: context.titleMedium,
                              ),
                              height5,
                              Text(
                                "Vote: ${data.voteCount ?? "0"}",
                                style: context.bodySmall!
                                    .copyWith(color: context.darkGrey),
                              ),
                              width10,
                            ],
                          ),
                          const Spacer(),
                          SvgPicture.asset(IconsPaths.icMoveVertDown)
                        ],
                      ),
                    ),
                  );
                }
              ),
            )
          ],
        );
      }
    );
  }
}