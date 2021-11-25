import 'package:appdevtask/provider/google_sign_in.dart';
import 'package:appdevtask/widget/background_painter.dart';
import 'package:appdevtask/widget/logged_in_widget.dart';
import 'package:appdevtask/widget/sign_up_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: ChangeNotifierProvider(
          create: (context) => GoogleSignInProvider(),
          child: StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              final provider = Provider.of<GoogleSignInProvider>(context);

              if (provider.isSigningIn) {
                return buildLoading();
              } else if (snapshot.hasData) {
                return LoggedInWidget();
              } else {
                return SignUpWidget();
              }
            },
          ),
        ),
      );

  // creating a loading indicator
  Widget buildLoading() => Stack(
        fit: StackFit.expand,
        children: [
          CustomPaint(painter: BackgroundPainter()),
          const Center(child: CircularProgressIndicator()),
        ],
      );
}


