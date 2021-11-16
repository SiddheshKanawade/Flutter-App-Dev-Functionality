import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:share/share.dart';
import 'package:theme_lightdart/provider/theme_provider.dart';
import 'package:theme_lightdart/widget/change_theme_provider.dart';

class AmalScaffolf extends StatelessWidget {
  final String title;
  final Widget body;
  final Widget tabBar;

  const AmalScaffolf(
      {Key key, @required this.body, @required this.title, this.tabBar})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    bool isDarkTheme =
        Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark;

        

    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      color: isDarkTheme ? Colors.grey[800] : Colors.white,
      child: SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          appBar: AppBar(
            // backgroundColor: isDarkTheme ? Colors.black87 : Colors.white,
            title: Text(title),
            centerTitle: true,
            //add background color to appbar
            bottom: tabBar != null ? tabBar : null,
            actions: <Widget>[
              // IconButton(
              //   icon: Icon(
              //     isDarkTheme
              //         ? FontAwesomeIcons.lightbulb
              //         : FontAwesomeIcons.solidLightbulb,
              //     size: 18,
              //   ),
              //   onPressed: () {
              //     Provider.of<ThemeProvider>(context, listen: false)
              //         .toggleTheme(true);}
                  
                
              // ),
              const ChangeThemeWidget(),
              IconButton(
                onPressed: () => Share.share(
                    "Download the new DevFest App and share with your tech friends.\nPlayStore -  http://bit.ly/2GDr18N"),
                icon: const Icon(
                  Icons.share,
                  size: 20,
                ),
              ),
            ],
          ),
          body: body,
        ),
      ),
    );
  }
}
