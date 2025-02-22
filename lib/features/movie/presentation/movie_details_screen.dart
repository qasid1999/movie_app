import 'package:movie_app/core/common_widgets/show_more_widget.dart';
import 'package:movie_app/core/helpers/imports_helper.dart';

class MovieDetailsScreen extends BasePageStatefulScreen {
  const MovieDetailsScreen({super.key});

  @override
  BaseStateful<MovieDetailsScreen> createState() => _MovieListScreenState();
}

class _MovieListScreenState extends BaseStateful<MovieDetailsScreen> {
  final IndicatorController controller = IndicatorController();

  @override
  void initState() {
    callAfterFrame(() {
      MovieServices.getMoviesList();
      readProvider<MovieController>().initializeScrollController();
    });
    super.initState();
  }

  @override
  Widget buildView(BuildContext context) {
    return Scaffold(
      backgroundColor: context.scaffoldBackgroundColor,
      body: Consumer<MovieController>(builder: (context, movieController, __) {
        var data = movieController.movieDetailsModel;
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 400.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: CachedNetworkImageProvider(
                            "${Constants.networkImageBaseUrl}${data?.posterPath.toString() ?? ""}"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    height: 400.h,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.transparent,
                          context.darkGrey.withOpacity(0.3),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: SafeArea(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 18.0.w,
                            vertical: 10.h,
                          ),
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Icon(
                                  Icons.arrow_back_ios_new_outlined,
                                  color: context.onPrimaryColor,
                                  size: 18,
                                ),
                              ),
                              width20,
                              Text(
                                "Watch",
                                style: context.titleLarge!.copyWith(
                                  color: context.onPrimaryColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 20,
                    right: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Title
                        Text(
                          data?.title ?? "",
                          style: context.titleMedium!.copyWith(
                            color: context.onPrimaryColor,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 10),

                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 190.w,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, RoutesPaths.seatsDetailsScreen);
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: context.skyBlue,
                                  // Button color
                                  foregroundColor: context.onPrimaryColor,
                                  // Text color
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        8), // Rounded corners
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 8),
                                ),
                                child: Text(
                                  "Get Tickets",
                                  style: context.titleSmall!
                                      .copyWith(color: context.onPrimaryColor),
                                ),
                              ),
                            ),
                            height5,
                            SizedBox(
                              width: 190.w,
                              child: OutlinedButton(
                                onPressed: () {
                                  movieController.playTrailer(
                                      data?.id ?? -1, context);
                                },
                                style: OutlinedButton.styleFrom(
                                  foregroundColor: context.skyBlue,
                                  // Text color
                                  side: BorderSide(
                                    color: context.skyBlue,
                                  ),
                                  // Border color
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        8), // Rounded corners
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 8),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(IconsPaths.icPlay),
                                    width5,
                                    Text(
                                      "Watch Trailer",
                                      style: context.titleSmall!.copyWith(
                                          color: context.onPrimaryColor),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              height10,
              Padding(
                padding: EdgeInsets.all(18.0.h),
                child: Text(
                  "Genres",
                  style: context.headlineSmall,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.0.w),
                child: Wrap(
                  runSpacing: 12.h, // Vertical spacing between rows
                  spacing: 10.w, // Horizontal spacing between items
                  children: (data?.genres ?? []).asMap().entries.map((entry) {
                    int index = entry.key;
                    var genre = entry.value;

                    List<Color> shuffledColors =
                        List.from(movieController.generesColorList)..shuffle();
                    Color color = shuffledColors[index % shuffledColors.length];

                    return IntrinsicWidth(
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(
                            vertical: padding7, horizontal: padding15),
                        decoration: BoxDecoration(
                          color: color,
                          borderRadius: borderRoundness40,
                        ),
                        child: Text(
                          genre.name ?? "",
                          style: context.bodySmall!
                              .copyWith(color: context.onPrimaryColor),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 18.0.w, vertical: 18.h),
                child: Divider(
                  color: context.borderColor,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.0.w),
                child: Text(
                  "Overview",
                  style: context.headlineSmall,
                ),
              ),
              height15,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.0.w),
                child: CommonReadMoreWidget(
                  mainBody: data?.overview ?? "",
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}
