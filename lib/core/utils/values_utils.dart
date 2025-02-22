import 'package:movie_app/core/helpers/imports_helper.dart';

const EdgeInsetsGeometry allSidePadding18 = EdgeInsets.all(18);
const EdgeInsetsGeometry horizontalPadding18 =
    EdgeInsets.symmetric(horizontal: 18);
const EdgeInsetsGeometry verticalPadding18 = EdgeInsets.symmetric(vertical: 18);
BorderRadius borderRoundness10 = BorderRadius.circular(10);
BorderRadius borderRoundness8 = BorderRadius.circular(8);
BorderRadius borderRoundness12 = BorderRadius.circular(12);
BorderRadius borderRoundness14 = BorderRadius.circular(14);
BorderRadius borderRoundness40 = BorderRadius.circular(40);
BorderRadius borderRoundness0 = BorderRadius.circular(0);
BorderRadius borderRoundness22 = BorderRadius.circular(22);
BorderRadius borderRoundness4 = BorderRadius.circular(4);
BorderRadius borderRoundness6 = BorderRadius.circular(6);
BorderRadius borderRoundness115 = BorderRadius.circular(115);
BorderRadius borderRoundness7 = BorderRadius.circular(7);
double borderWidth0And5 = 0.5;
double borderWidth1 = 1;
double borderWidth1And5 = 1.5;
double borderWidth2 = 2;

///Common Border
OutlineInputBorder commonBorder(Color color, {double? width, double? radius}) {
  return OutlineInputBorder(
    borderRadius:
        radius != null ? BorderRadius.circular(radius) : borderRoundness40,
    borderSide: BorderSide(
      width: width ?? 1,
      color: color,
    ),
  );
}

///Shadow
Gradient? centerShadow = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Colors.transparent, // Start with a darker shadow
    currentContext.secondaryColor.withOpacity(0.4), // Gradually fade
    currentContext.secondaryColor
        .withOpacity(0.4), // Start with a darker shadow
    Colors.transparent, // Fully transparent at the end
  ],
  stops: const [0.0, 0.3, 0.7, 1.0], // Define the position of color stops
);

Gradient? fullCardShadow = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Colors.transparent, // Start with a darker shadow
    currentContext.secondaryColor.withOpacity(0.4), // Gradually fade
    currentContext.secondaryColor
        .withOpacity(0.4), // Start with a darker shadow
    Colors.transparent, // Fully transparent at the end
  ],
  stops: const [0.0, 0.0, 0.7, 1.0], // Define the position of color stops
);

List<BoxShadow>? bottomShadow = [
  BoxShadow(
    color: Colors.black.withOpacity(0.2), // Shadow color
    offset: const Offset(1, 3), // Horizontal and vertical offset
    blurRadius: 8, // Shadow blur radius
  ),
];
List<BoxShadow>? whiteBottomShadow = [
  BoxShadow(
    color: Colors.white.withOpacity(0.4), // Shadow color
    offset: const Offset(1, 3), // Horizontal and vertical offset
    blurRadius: 8, // Shadow blur radius
  ),
];

///Paddings
double padding25 = 25;
double padding40 = 40;
double padding30 = 30;
double padding35 = 35;
double padding50 = 50.h;
double padding70 = 70.h;
double padding20 = 20;
double padding15 = 15;
double padding10 = 10;
double padding120 = 120.h;
double padding100 = 100.h;
double padding7 = 7;
double padding5 = 5;
double padding8 = 8;
double padding12 = 12.0;

///Button Heights
double containerHeight10 = 10.h;
double containerHeight50 = 50.h;
double containerHeight45 = 45.h;
double containerHeight145 = 145.h;
double containerHeight180 = 180.h;
double containerHeight130 = 130.h;
double containerHeight120 = 120.h;
double containerHeight150 = 150.h;
double containerHeight160 = 160.h;
double containerHeight250 = 250.h;
double containerHeight260 = 260.h;
double containerHeight30 = 30.h;
double containerHeight340 = 340.h;
double containerHeight290 = 290.h;
double containerHeight300 = 300.h;
double containerHeight25 = 25.h;
double containerHeight20 = 20.h;
double containerHeight70 = 70.h;
double containerHeight40 = 40.h;
double containerHeight85 = 85.h;
double containerHeight65 = 65.h;
double containerHeight100 = 100.h;

double containerWidth50 = 50.w;
double containerWidth45 = 45.w;
double containerWidth40 = 40.w;
double containerWidth25 = 25.w;
double containerWidth20 = 20.w;
double containerWidth180 = 180.w;
double containerWidth130 = 130.w;
double containerWidth120 = 120.w;
double containerWidth30 = 30.w;
double containerWidth70 = 70.w;
double containerWidth85 = 85.w;
double containerWidth65 = 65.w;
double containerWidth100 = 100.w;

double screenHeight = MediaQuery.of(currentContext).size.height;
double screenWidth = MediaQuery.of(currentContext).size.width;

Widget height2 = SizedBox(
  height: 2.h,
);

Widget height3 = SizedBox(
  height: 3.h,
);
Widget height5 = SizedBox(
  height: 5.h,
);
Widget height7 = SizedBox(
  height: 7.h,
);
Widget height8 = SizedBox(
  height: 8.h,
);
Widget height10 = SizedBox(
  height: 10.h,
);
Widget height70 = SizedBox(
  height: 70.h,
);
Widget height15 = SizedBox(
  height: 15.h,
);
Widget height20 = SizedBox(
  height: 20.h,
);

Widget height25 = SizedBox(
  height: 25.h,
);
Widget height30 = SizedBox(
  height: 30.h,
);
Widget height35 = SizedBox(
  height: 35.h,
);
Widget height40 = SizedBox(
  height: 40.h,
);
Widget height45 = SizedBox(
  height: 45.h,
);
Widget height50 = SizedBox(
  height: 50.h,
);
Widget height55 = SizedBox(
  height: 55.h,
);
Widget height60 = SizedBox(
  height: 50.h,
);
Widget width2 = SizedBox(
  width: 2.w,
);
Widget width3 = SizedBox(
  width: 3.w,
);
Widget width5 = SizedBox(
  width: 5.w,
);
Widget width10 = SizedBox(
  width: 10.w,
);

Widget width15 = SizedBox(
  width: 15.w,
);

Widget width20 = SizedBox(
  width: 20.w,
);
Widget width25 = SizedBox(
  width: 25.w,
);
Widget width30 = SizedBox(
  width: 30.w,
);

Widget width35 = SizedBox(
  width: 35.w,
);

Widget width40 = SizedBox(
  width: 40.w,
);

Widget width50 = SizedBox(
  width: 50.w,
);