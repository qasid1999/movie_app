import 'package:movie_app/core/helpers/imports_helper.dart';

class SeatsDetailsScreen extends BasePageStatefulScreen {
  const SeatsDetailsScreen({super.key});

  @override
  BaseStateful<SeatsDetailsScreen> createState() => _MovieListScreenState();
}

class _MovieListScreenState extends BaseStateful<SeatsDetailsScreen> {
  @override
  Widget buildView(BuildContext context) {
    return Scaffold(
      backgroundColor: context.scaffoldBackgroundColor,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, RoutesPaths.selectedSeat);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: context.skyBlue,
              // Button color
              foregroundColor: context.onPrimaryColor,
              // Text color
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8), // Rounded corners
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            ),
            child: Text(
              "Get Tickets",
              style: context.titleSmall!.copyWith(color: context.onPrimaryColor),
            ),
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
      body: Consumer<SeatController>(
        builder: (context, seatController, __) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(18.0.h),
                child: Text(
                  "Date",
                  style: context.titleSmall,
                ),
              ),
              SizedBox(
                height: 30.h,
                child: ListView.builder(
                  itemCount: 31,
                  padding: EdgeInsets.symmetric(horizontal: 18.w),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(right: 10.w),
                      child: InkWell(
                        onTap: () {
                          seatController.setSelectedDayIndex(index);
                        },
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: borderRoundness14,
                            color: index == seatController.selectedDayIndex
                                ? context.skyBlue
                                : context.darkGrey.withOpacity(0.2),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 18.0.w,
                              vertical: 7.h,
                            ),
                            child: Text(
                              "${index + 1} Mar",
                              style: context.bodySmall!.copyWith(
                                  color:
                                      index == seatController.selectedDayIndex
                                          ? context.onPrimaryColor
                                          : context.onBackgroundColor,
                                  fontSize: 10),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              height30,
              SizedBox(
                height: 250.h,
                child: ListView.builder(
                  itemCount: 31,
                  padding: EdgeInsets.symmetric(horizontal: 18.w),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(right: 10.w),
                      child: InkWell(
                        onTap: () {
                          seatController.setSelectedSeatIndex(index);
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 18.0.h, vertical: 10.h),
                              child: Row(
                                children: [
                                  Text("12:30", style: context.bodySmall),
                                  width5,
                                  Text(
                                    "Cinetech + hall 1",
                                    style: context.bodySmall!
                                        .copyWith(color: context.darkGrey),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 165.h,
                              width: 249.w,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: borderRoundness14,
                                border: Border.all(
                                  color:
                                      index == seatController.selectedSeatIndex
                                          ? context.skyBlue
                                          : context.darkGrey.withOpacity(0.2),
                                ),
                                color: context.onPrimaryColor,
                              ),
                              child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 18.0.w,
                                    vertical: 7.h,
                                  ),
                                  child: Image.asset(
                                    ImagesPaths.imgSeat,
                                  )),
                            ),
                            height10,
                            RichText(
                              text: TextSpan(
                                style: context.bodySmall!
                                    .copyWith(color: context.darkGrey),
                                children: [
                                  TextSpan(
                                    text: "From ",
                                    style: context.bodySmall!
                                        .copyWith(color: context.darkGrey),
                                  ),
                                  TextSpan(
                                    text: "50\$",
                                    style: context.headlineSmall!.copyWith(
                                      fontSize: 12,
                                    ),
                                  ),
                                  TextSpan(
                                    text: " or ",
                                    style: context.bodySmall!
                                        .copyWith(color: context.darkGrey),
                                  ),
                                  TextSpan(
                                    text: "2500 bonus",
                                    style: context.headlineSmall!.copyWith(
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
