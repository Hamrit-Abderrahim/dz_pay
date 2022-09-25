// import 'package:flutter/material.dart';

// import 'color_manager.dart';
// import 'font_manager.dart';
// import 'value_manager.dart';

// ThemeData getApplicationTheme() {
//   return ThemeData(
// //***********************main Colors**********************//

//       primaryColor: ColorManager.primary,
//       primaryColorLight: ColorManager.lightPrimary,
//       primaryColorDark: ColorManager.darkPrimary,
//       disabledColor: ColorManager.grey1,
//       splashColor: ColorManager.lightPrimary,

// //**********************card view theme ***********************//
//       cardTheme: CardTheme(
//         color: ColorManager.white,
//         shadowColor: ColorManager.grey,
//         elevation: AppSize.s8,
//       ),
// //**********************appBar theme ***********************//
//       appBarTheme: AppBarTheme(
//         color: ColorManager.primary,
//         centerTitle: true,
//         elevation: AppSize.s4,
//         shadowColor: ColorManager.lightPrimary,
//       ),

// //**********************button theme ***********************//
//       buttonTheme: ButtonThemeData(
//         buttonColor: ColorManager.primary,
//         shape: const StadiumBorder(),
//         disabledColor: ColorManager.grey1,
//         splashColor: ColorManager.lightPrimary,
//       ),

// //**********************elevated button theme ***********************//
//       elevatedButtonTheme: ElevatedButtonThemeData(
//           style: ElevatedButton.styleFrom(
//               primary: ColorManager.primary,
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(AppSize.s12)))),
// //**********************inputDecoration theme **************//
//       inputDecorationTheme: InputDecorationTheme(
//         contentPadding: const EdgeInsets.all(AppPadding.p8),

//         //*******enabled broder style *************//
//         enabledBorder: const OutlineInputBorder(
//             borderSide: BorderSide(
//               color: ColorManager.grey,
//               width: AppSize.s1_5,
//             ),
//             borderRadius: BorderRadius.all(
//               Radius.circular(AppSize.s8),
//             )),
//         //*******errorBorder style *************//
//         errorBorder: OutlineInputBorder(
//             borderSide: BorderSide(
//               color: ColorManager.error,
//               width: AppSize.s1_5,
//             ),
//             borderRadius: const BorderRadius.all(
//               Radius.circular(AppSize.s8),
//             )),
//         //*******focusedBorder style *************//
//         focusedBorder: const OutlineInputBorder(
//             borderSide: BorderSide(
//               color: ColorManager.grey,
//               width: AppSize.s1_5,
//             ),
//             borderRadius: BorderRadius.all(
//               Radius.circular(AppSize.s8),
//             )),
//         //*******focusedErrorBorder style *************//
//         focusedErrorBorder: const OutlineInputBorder(
//             borderSide: BorderSide(
//               color: ColorManager.primary,
//               width: AppSize.s1_5,
//             ),
//             borderRadius: BorderRadius.all(
//               Radius.circular(AppSize.s8),
//             )),
//       ));
// }
