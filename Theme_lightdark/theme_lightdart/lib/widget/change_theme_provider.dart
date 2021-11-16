import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_lightdart/provider/theme_provider.dart';

class ChangeThemeWidget extends StatelessWidget {
  const ChangeThemeWidget({Key key}) : super(key: key);

  // const ChangeThemeWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    // ignore: non_constant_identifier_names

    return Switch.adaptive(
      value: themeProvider.isDarkMode,
      onChanged: (value) {
        final provider = Provider.of<ThemeProvider>(context, listen: false);
        provider.toggleTheme(value);
      },
    );
    // return Column(
    //   children: <Widget>[
    //     Padding(
    //       padding: EdgeInsets.all(5),
    //       child: Icon(
    //         themeProvider.isDarkMode
    //             ? Icons.lightbulb
    //             : Icons.lightbulb_outline,
    //         color: themeProvider.isDarkMode ? Colors.black87 : Colors.purple,

    //       ),
    //     ),
    //     GestureDetector(
    //       onTap: () {
    //         themeProvider.toggleTheme(themeProvider.isDarkMode);
    //       },
    //     )
    //   ],
    // );
    // return IconButton(
    //   onPressed: () => Provider.of<ThemeProvider>(context)
    //       .toggleTheme(themeProvider.isDarkMode),
    //   icon: Icon(themeProvider.isDarkMode ? Icons.lightbulb : Icons.lightbulb_outline,),

    // );
  }
}
