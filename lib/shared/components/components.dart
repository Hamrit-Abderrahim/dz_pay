import 'package:dz_pay/core/utils/color_manager.dart';
import 'package:flutter/material.dart';

Widget defaultText(String title, double size,
        {Color color = ColorManager.textColor}) =>
    Text(
      title.toUpperCase(),
      style: TextStyle(
        color: color,
        fontSize: size,
      ),
    );
