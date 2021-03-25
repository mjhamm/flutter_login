import 'package:flutter/material.dart';
import 'package:flutter_login/custom_colors.dart';

class CustomPageRoute<T> extends PageRoute<T> {
      CustomPageRoute(this.child, this.duration);
      @override
      Color get barrierColor => CustomColors.middleBluePurple;

      @override
      String get barrierLabel => null;

      final Widget child;
      final int duration;

      @override
      Widget buildPage(BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      }

      @override
      bool get maintainState => true;

      @override
      Duration get transitionDuration => Duration(milliseconds: duration);
    }