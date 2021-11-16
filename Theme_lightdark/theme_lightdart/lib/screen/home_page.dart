import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_lightdart/provider/theme_provider.dart';
import 'package:theme_lightdart/universal/amal_scafflod.dart';

import 'package:theme_lightdart/widget/change_theme_provider.dart';

// ignore: camel_case_types
class homePage extends StatelessWidget {
  // const homePage({Key? key}) : super(key: key);

  static const String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    // ignore: unrelated_type_equality_checks
    bool isDarkTheme = Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark;
    final text =
        isDarkTheme
            ? 'DarkTheme'
            : 'LightTheme';
  

    // return Scaffold(
    //   appBar: AppBar(
    //     leadingWidth: MediaQuery.of(context).size.width * 0.5,
    //     backgroundColor: isDarkTheme ? Colors.black : Colors.white,
    //     elevation: 0,
    //     title: const Text('ThemeChange',),
    //     actions:  const [
    //       ChangeThemeWidget(),
    //     ],
    //   ),
    //   // ignore: avoid_unnecessary_containers
    //   body: Container(
    //     child: Center(
    //       child: Text(
    //         text,
    //         style: const TextStyle(fontSize: 32),
    //       ),
    //     ),
    //   ),
    // );

    return AmalScaffolf(
      title: 'Amalthea 2021',
      body: Container(),
    );
  }
}
