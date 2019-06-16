import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:dashboard_reborn/utils/colors.dart';
import 'package:dashboard_reborn/utils/textstyles.dart';
import 'package:dashboard_reborn/utils/widgets.dart';

void doNothing() {
  print("Nothing is happening here");
}

bool isThemeCurrentlyDark(BuildContext context) {
  if (Theme.of(context).brightness == Brightness.dark) {
    return true;
  } else {
    return false;
  }
} //returns current theme status

Color invertColors(BuildContext context) {
  if (isThemeCurrentlyDark(context)) {
    return MyColors.light;
  } else {
    return MyColors.dark;
  }
} //returns appropriate colors for text visibility

void showSnackBar(BuildContext context, String message) {
  final snackBar = SnackBar(content: Text(message));
  Scaffold.of(context).showSnackBar(snackBar);
} //easily show a snackbar

void navigateToPage(BuildContext context, pageToOpen) async {
  await Navigator.push(context, CupertinoPageRoute(builder: (context) {
    return pageToOpen();
  }));
}
