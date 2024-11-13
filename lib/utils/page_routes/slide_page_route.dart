import 'package:flutter/material.dart';

class SlidePageRoute extends PageRouteBuilder {
  final Widget child;

  SlidePageRoute(this.child)
      : super(
    transitionDuration: Duration(milliseconds: 500),
    transitionsBuilder: (BuildContext context, Animation<double> animation,
        Animation<double> secondaryAnimation, Widget child) {
      final offsetAnimation = Tween<Offset>(
        begin: Offset(1, 0),
        end: Offset(0, 0),
      ).animate(animation);

      return SlideTransition(
        position: offsetAnimation,
        child: child,
      );
    },
    pageBuilder: (BuildContext context, Animation<double> animation,
        Animation<double> secondaryAnimation) {
      return child;
    },
  );
}
