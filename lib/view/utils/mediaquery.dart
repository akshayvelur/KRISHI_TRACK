import 'package:flutter/material.dart';

mediaqueryHeight(x,BuildContext context){
  return MediaQuery.sizeOf(context).height*x;
}

mediaqueryWidth(x,BuildContext context){
  return MediaQuery.sizeOf(context).width*x;
}