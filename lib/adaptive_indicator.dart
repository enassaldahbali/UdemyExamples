import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveIndicator extends StatelessWidget {
String OS;
AdaptiveIndicator({required this.OS});
//codee
  ////////////////\
  ///this is b
  ///klmqls,;;;;;;;;;;;;;;
  @override
  Widget build(BuildContext context) {
    if(this.OS=='android')
      return CircularProgressIndicator();

    return CupertinoActivityIndicator();
  }
}
