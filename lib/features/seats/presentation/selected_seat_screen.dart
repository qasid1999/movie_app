import 'package:movie_app/core/helpers/imports_helper.dart';

class SelectedSeatScreen extends BasePageStatefulScreen {
  const SelectedSeatScreen({super.key});

  @override
  BaseStateful<SelectedSeatScreen> createState() => _MovieListScreenState();
}

class _MovieListScreenState extends BaseStateful<SelectedSeatScreen> {
  @override
  Widget buildView(BuildContext context) {
    return Scaffold(
      backgroundColor: context.scaffoldBackgroundColor,
      bottomNavigationBar: Container(
        color: context.onPrimaryColor,
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Row(
            children: [
              Container(
                height: 60.h,
                width: screenWidth * 0.3,
                decoration: BoxDecoration(
                  borderRadius: borderRoundness6,
                  color: context.scaffoldBackgroundColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Total price",
                      style: context.bodySmall,
                    ),
                    Text(
                      "\$ 50",
                      style: context.headlineSmall,
                    ),
                  ],
                ),
              ),
              width10,
              SizedBox(
                height: 60.h,
                width: screenWidth * 0.55,
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
                      borderRadius: BorderRadius.circular(8), // Rounded corners
                    ),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  ),
                  child: Text(
                    "Proceed to pay",
                    style: context.titleSmall!
                        .copyWith(color: context.onPrimaryColor),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: context.onPrimaryColor,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios_new,
              size: 20,
            )),
        centerTitle: true,
        title: Column(
          children: [
            Text(
              "The King’s Man",
              style: context.headlineSmall,
            ),
            height5,
            Text(
              "In theaters december 22, 2021",
              style: context.bodySmall!.copyWith(color: context.skyBlue),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          height30,
          SizedBox(
            height: 300.h,
            width: double.infinity,
            child: InteractiveViewer(
              boundaryMargin: EdgeInsets.all(18.h),
              minScale: 0.5,
              maxScale: 3.0,
              child: Image.asset(
                ImagesPaths.imgSeat,
              ),
            ),
          ),
          height30,
          Expanded(
            child: Container(
              height: 200.h,
              width: double.infinity,
              color: context.onPrimaryColor,
              child: Column(
                children: [
                  height30,
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              IconsPaths.icSeat,
                              color: context.darkYellow,
                            ),
                            width10,
                            Text(
                              "Selected",
                              style: context.labelMedium!
                                  .copyWith(color: context.darkGrey),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                              IconsPaths.icSeat,
                              color: context.darkGrey,
                            ),
                            width10,
                            Text(
                              "No available",
                              style: context.labelMedium!
                                  .copyWith(color: context.darkGrey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              IconsPaths.icSeat,
                              color: context.darkBlue,
                            ),
                            width10,
                            Text(
                              "VIP(150\$)",
                              style: context.labelMedium!
                                  .copyWith(color: context.darkGrey),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                              IconsPaths.icSeat,
                              color: context.skyBlue,
                            ),
                            width10,
                            Text(
                              "Regular(40\$)",
                              style: context.labelMedium!
                                  .copyWith(color: context.darkGrey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  height30,
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 6 .w),
                    height: 40.h,
                    width: screenWidth * 0.3,
                    decoration: BoxDecoration(
                      borderRadius: borderRoundness6,
                      color: context.scaffoldBackgroundColor,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "4 / ",
                          style: context.headlineSmall,
                        ),
                        Text(
                          "3 row",
                          style: context.bodySmall!
                              .copyWith(color: context.darkGrey),
                        ),
                        Spacer(),
                        Icon(Icons.close)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
