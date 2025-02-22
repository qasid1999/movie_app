// import 'package:dropdown_button2/dropdown_button2.dart';

// import '../helpers/imports_helper.dart';


// class CommonDropDown extends StatefulWidget {
//   final String? selectedValue;
//   final Function(String?)? onTextChanged;
//   final List<String> list;
//   const CommonDropDown(
//       {super.key, this.selectedValue, this.onTextChanged, required this.list});

//   @override
//   State<CommonDropDown> createState() => _CommonDropDownState();
// }

// class _CommonDropDownState extends State<CommonDropDown> {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: DropdownButtonHideUnderline(
//         child: DropdownButton2<String>(
//           isExpanded: true,
//           hint: const Row(
//             children: [
//               Expanded(
//                 child: Text(
//                   'Select Item',
//                   style: TextStyle(
//                     fontSize: 14,
//                     fontWeight: FontWeight.w500,
//                     color: blackColor,
//                   ),
//                   overflow: TextOverflow.ellipsis,
//                 ),
//               ),
//             ],
//           ),
//           isDense: true,
//           selectedItemBuilder: (con) {
//             return widget.list.map((item) {
//               return Text(
//                 item,
//                 style: Theme.of(context).textTheme.headlineSmall,
//               );
//             }).toList();
//           },
//           items: widget.list.map((option) {
//             return DropdownMenuItem(
//               value: option,
//               child: Container(
//                   width: double.infinity,
//                   alignment: Alignment.centerLeft,
//                   padding: const EdgeInsets.fromLTRB(0, 8.0, 0, 6.0),
//                   decoration: BoxDecoration(
//                     border: Border(
//                       top: BorderSide(
//                         color: widget.list.indexOf(option) == 0
//                             ? Colors.transparent
//                             : greyColor,
//                         width: 1,
//                       ),
//                     ),
//                   ),
//                   child: Text(
//                     option,
//                     style: Theme.of(context).textTheme.headlineSmall,
//                   )),
//             );
//           }).toList(),
//           value: widget.selectedValue,
//           onChanged: widget.onTextChanged,
//           buttonStyleData: ButtonStyleData(
//             height: 45,
//             width: 160,
//             padding: const EdgeInsets.only(left: 14, right: 14),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(14),
//               border: Border.all(
//                 color: Colors.black26,
//               ),
//               color: whiteColor,
//             ),
//             elevation: 0,
//           ),
//           iconStyleData: const IconStyleData(
//             icon: Icon(
//               Icons.keyboard_arrow_down,
//             ),
//             iconSize: 22,
//             iconEnabledColor: blackColor,
//           ),
//           dropdownStyleData: DropdownStyleData(
//             elevation: 1,
//             maxHeight: 200,
//             width: 200,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(14),
//               color: whiteColor,
//             ),
//             offset: const Offset(-20, 0),
//           ),
//           menuItemStyleData: const MenuItemStyleData(
//             height: 40,
//             padding: EdgeInsets.only(left: 14, right: 14),
//           ),
//         ),
//       ),
//     );
//   }
// }
