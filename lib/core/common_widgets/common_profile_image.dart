// import '../helpers/imports_helper.dart';
//
// class CommonProfileImage extends StatelessWidget {
//   final String imageUrl;
//   final double? height;
//   final double? width;
//   const CommonProfileImage({super.key, required this.imageUrl, this.height = 36 , this.width = 36});
//
//   @override
//   Widget build(BuildContext context) {
//     return CachedNetworkImage(
//       imageUrl: imageUrl,
//       imageBuilder: (context, imageProvider) {
//         return  Container(
//           height: height,
//           width: width,
//           decoration: BoxDecoration(
//             image: DecorationImage(
//               image: imageProvider,
//               fit: BoxFit.cover,
//             ),
//             shape: BoxShape.circle // Optional: if you want rounded corners
//           ),
//         );
//       },
//       height: height,
//       width: width,
//       placeholder: (context, url) => Container(height: height,width: width, decoration: BoxDecoration(color: context.onBackgroundColor.withOpacity(0.2),shape: BoxShape.circle),),
//       errorWidget: (context, url, error) => Image.asset(
//         ImagesPaths.imgDefauldAvatar,
//         height: height,
//         width: width,
//       ),
//     );
//   }
// }
