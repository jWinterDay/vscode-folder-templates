// // @dart = 2.12

// example
// // ignore_for_file: import_of_legacy_library_into_null_safe
// import 'package:flutter/material.dart';
// import 'package:design/design.dart';
// import 'package:design/typography.dart';

// class PinTheme extends InheritedWidget {
//   const PinTheme({
//     Key? key,
//     this.data,
//     required Widget child,
//   }) : super(
//           key: key,
//           child: child,
//         );

//   final PinThemeData? data;

//   static PinThemeData of(BuildContext context) {
//     final PinTheme? inheritedTheme = context.dependOnInheritedWidgetOfExactType<PinTheme>();
//     return inheritedTheme?.data ?? _defaultThemeData(context);
//   }

//   static PinThemeData _defaultThemeData(BuildContext context) {
//     final Design design = Design.of(context);
//     final Color color = design.colorScheme.onBackground;
//     return PinThemeData(
//       backgroundColor: design.colors.primaryDark.withOpacity(0.6),
//       foregroundColor: color,
//       numberTextStyle: TextStyle(
//         fontSize: 37,
//         height: 43 / 37,
//         fontWeight: FontWeight.w400,
//         fontFamily: CustomTypography.fontFamilySwatch[FontWeight.w400],
//         color: color,
//       ),
//     );
//   }

//   @override
//   bool updateShouldNotify(PinTheme oldWidget) => data != oldWidget.data;
// }

// @immutable
// class PinThemeData {
//   const PinThemeData({
//     required this.backgroundColor,
//     required this.foregroundColor,
//     required this.numberTextStyle,
//   });

//   final Color backgroundColor;
//   final Color foregroundColor;
//   final TextStyle numberTextStyle;
// }
