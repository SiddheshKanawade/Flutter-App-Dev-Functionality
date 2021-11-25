import 'package:appdevtask/provider/google_sign_in.dart';
import 'package:appdevtask/widget/social_media.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';


// ignore: use_key_in_widget_constructors
class LoggedInWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        alignment: Alignment.center,
        color: Colors.black,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Logged In',
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 8),
              CircleAvatar(
                maxRadius: MediaQuery.of(context).size.height * 0.12,
                backgroundImage: NetworkImage(user.photoURL),
              ),
              const SizedBox(height: 10),
              // ignore: deprecated_member_use
              OutlineButton(
                highlightElevation: 10,
                onPressed: null,
                disabledBorderColor: Colors.white,
                child: Text(
                  user.displayName,
                  style: const TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'This will contain paragraph',
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              SocialMedia(),
              // Padding(
              //   padding: const EdgeInsets.all(4),
              //   child: Wrap(
              //     alignment: WrapAlignment.center,
              //     spacing: 20.0,
              //     runSpacing: 20.0,
              //     children: <Widget>[
              //       ActionCard(
              //         icon: Icons.call,
              //         color: Colors.red,
              //         title: 'Call',
              //         onPressed: () => null,
              //       ),
              //       ActionCard(
              //         icon: Icons.mail,
              //         color: Colors.green,
              //         title: 'Email',
              //         onPressed: () => null,
              //       ),
              //       ActionCard(
              //         icon: FontAwesomeIcons.whatsapp,
              //         color: Colors.green,
              //         title: 'WhatsApp',
              //         onPressed: () => {},
              //       ),
              //       ActionCard(
              //         icon: FontAwesomeIcons.linkedin,
              //         color: Colors.blue.shade900,
              //         title: 'LinkedIn',
              //         onPressed: () => {},
              //       ),
              //       ActionCard(
              //         icon: FontAwesomeIcons.facebook,
              //         color: Colors.blue,
              //         title: 'Facebook',
              //         onPressed: () => {},
              //       ),
              //       ActionCard(
              //         icon: FontAwesomeIcons.instagram,
              //         color: Colors.purple,
              //         title: 'Instagram',
              //         onPressed: () => {},
              //       )
              //     ],
              //   ),
              // ),
              Text(
                'Email: ' + user.email,
                style: const TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  final provider =
                      Provider.of<GoogleSignInProvider>(context, listen: false);
                  provider.logout();
                },
                child: const Text('Logout'),
              )
            ],
          ),
        ),
      ),
    );
  }
}


