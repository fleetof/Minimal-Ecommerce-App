import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(

  colorScheme: ColorScheme.light( // 代码解释：创建一个ColorScheme对象，然后调用它的light()方法，该方法返回一个ColorScheme对象。
    background: Colors.grey.shade300, // 代码解释：设置背景颜色为灰色。
    primary: Colors.grey.shade200, // 代码解释：设置主要颜色为灰色。
    secondary: Colors.white,    // 代码解释：设置次要颜色为白色。
    inversePrimary: Colors.grey.shade700, // 代码解释：设置反转主要颜色为深灰色。
  ),
);
