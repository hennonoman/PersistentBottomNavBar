part of persistent_bottom_nav_bar;

Future<T> pushNewScreen<T extends Object>(
  BuildContext context, {
  @required Widget screen,
  bool withNavBar,
  PageTransitionAnimation pageTransitionAnimation =
      PageTransitionAnimation.cupertino,
  PageRoute customPageRoute,
}) {
  if (withNavBar == null) {
    withNavBar = true;
  }
  return Navigator.of(context, rootNavigator: !withNavBar).push(
      customPageRoute ??
          getPageRoute(pageTransitionAnimation, enterPage: screen));
}
Future<T> pushAndRemoveUntil<T extends Object>(
  BuildContext context, {
  @required Widget screen,
  bool withNavBar,
  PageTransitionAnimation pageTransitionAnimation =
      PageTransitionAnimation.cupertino,
  PageRoute customPageRoute,
}) {
  if (withNavBar == null) {
    withNavBar = false;
  }
  return Navigator.of(context, rootNavigator: !withNavBar).push(
      customPageRoute ??
          getPageRoute(pageTransitionAnimation, enterPage: screen));
}

Future<T> pushDynamicScreen<T extends Object>(
  BuildContext context, {
  @required dynamic screen,
  bool withNavBar,
}) {
  if (withNavBar == null) {
    withNavBar = true;
  }
  return Navigator.of(context, rootNavigator: !withNavBar).push(screen);
}

Future<T> pushNewScreenWithRouteSettings<T extends Object>(
  BuildContext context, {
  @required Widget screen,
  @required RouteSettings settings,
  bool withNavBar,
  PageTransitionAnimation pageTransitionAnimation =
      PageTransitionAnimation.cupertino,
  PageRoute customPageRoute,
}) {
  if (withNavBar == null) {
    withNavBar = true;
  }

  return Navigator.of(context, rootNavigator: !withNavBar).push(
      customPageRoute ??
          getPageRoute(pageTransitionAnimation,
              enterPage: screen, settings: settings));
}
