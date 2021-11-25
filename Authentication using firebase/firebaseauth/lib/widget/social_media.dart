
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'action_card.dart';

class SocialMedia extends StatelessWidget {
  // const SocialMedia({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: FirebaseFirestore.instance.collection('data').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          // ignore: dead_code
          return  Container( child: Text(snapshot.data.docs[0]['name']),);
             
            
          
        },);
        
  }
}
 // children: snapshot.data.docs.map((document) {
              //   return Center(
              //     child: Text(document[]),
              //   )
                // return Container(
                //   padding: const EdgeInsets.all(4),
                //   child: Wrap(
                //     alignment: WrapAlignment.center,
                //     spacing: 20.0,
                //     runSpacing: 20.0,
                //     children: <Widget>[
                //       Text(document['name']),
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
                //       ),
                //     ],
                //   ),
                // );
        //       }).toList(),
