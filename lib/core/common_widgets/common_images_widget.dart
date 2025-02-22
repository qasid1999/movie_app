import 'package:movie_app/core/helpers/imports_helper.dart';

class CommonBannerImageWidget extends StatelessWidget {
  final String imagePath;

  const CommonBannerImageWidget({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: context.surfaceColor, borderRadius: borderRoundness12),
      child: ClipRRect(
        borderRadius: borderRoundness12, // Adds rounded corners
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover, // Ensures the image covers the area
          width: screenWidth * 0.9,
          height: containerHeight180, // Adjust the height as needed
        ),
      ),
    );
  }
}

class CommonImageWidget extends StatelessWidget {
  final String imagePath;
  final double? height;
  final double? width;
  final BoxFit? fit;
  final BorderRadius? borderRadius;

  const CommonImageWidget(
      {super.key,
      required this.imagePath,
      this.height,
      this.width,
      this.fit,
      this.borderRadius});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: context.surfaceColor,
          borderRadius: borderRadius ?? borderRoundness12),
      child: ClipRRect(
        borderRadius: borderRadius ?? borderRoundness12, // Adds rounded corners
        child: Image.asset(
          imagePath,
          fit: fit ?? BoxFit.cover, // Ensures the image covers the area
          width: width ?? containerWidth180,
          height: height ?? containerHeight130, // Adjust the height as needed
        ),
      ),
    );
  }
}

class CommonProfileNetworkImageWidget extends StatelessWidget {
  final String imagePath;
  final double? height;
  final double? width;
  final BoxFit? fit;
  final double? imageOutSidePadding;
  final BorderRadiusGeometry? borderRadius;
  final String? errorIcon;

  const CommonProfileNetworkImageWidget(
      {super.key,
      required this.imagePath,
      this.height,
      this.width,
      this.fit,
      this.imageOutSidePadding,
      this.borderRadius,
      this.errorIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? containerWidth130,
      height: height ?? containerHeight130,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(width: borderWidth1, color: context.primaryColor)),
      child: CachedNetworkImage(
        imageUrl: imagePath,
        imageBuilder: (context, imageProvider) => Container(
          width: width ?? containerWidth130,
          height: height ?? containerHeight130,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: imageProvider,
              fit: fit ?? BoxFit.cover,
            ),
          ),
        ),
        placeholder: (context, url) => CommonBaseShimmer(
          isLoading: true,
          child: Container(
            decoration: BoxDecoration(
                color: context.borderColor.withOpacity(0.2),
                shape: BoxShape.circle),
            width: width ?? containerWidth180,
            height: height ?? containerHeight130,
          ),
        ),
        errorWidget: (context, url, error) => Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: context.primaryColor),
          child: Padding(
              padding: EdgeInsets.all(imageOutSidePadding ?? padding5),
              child: const Icon(Icons.error_outline_rounded)),
        ),
        fit: fit ?? BoxFit.cover,
        // Ensures the image covers the area
        width: width ?? containerWidth130,
        height: height ?? containerHeight130,
      ),
    );
  }
}

class CommonCacheNetworkImageWidget extends StatelessWidget {
  final String imagePath;
  final double? height;
  final double? width;
  final BoxFit? fit;
  final double? imageOutSidePadding;
  final BorderRadiusGeometry? borderRadius;
  final String? errorIcon;

  const CommonCacheNetworkImageWidget(
      {super.key,
      required this.imagePath,
      this.height,
      this.width,
      this.fit,
      this.imageOutSidePadding,
      this.borderRadius,
      this.errorIcon});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius ?? borderRoundness7, // Adds rounded corners
      child: CachedNetworkImage(
        imageUrl: imagePath,
        placeholder: (context, url) => CommonBaseShimmer(
          isLoading: true,
          child: Container(
            color: context.borderColor.withOpacity(0.2),
            width: width ?? containerWidth180,
            height: height ?? containerHeight130,
          ),
        ),
        errorWidget: (context, url, error) => Container(
          decoration: BoxDecoration(color: context.onPrimaryColor),
          child: Padding(
              padding: EdgeInsets.all(imageOutSidePadding ?? padding5),
              child: Icon(
                Icons.photo_library_outlined,
                color: context.borderColor,
                size: 40,
              )),
        ),
        fit: fit ?? BoxFit.cover,
        // Ensures the image covers the area
        width: width ?? containerWidth180,
        height: height ?? containerHeight130, // Adjust the height as needed
      ),
    );
  }
}
