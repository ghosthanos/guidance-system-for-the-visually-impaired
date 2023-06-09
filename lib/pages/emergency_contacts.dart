import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:miniproject/Untitled-1.dart';
import 'package:miniproject/models/googlemaps.dart';
import 'package:miniproject/pages/emergency_contacts_grid.dart';
import 'package:miniproject/pages/loginpage.dart';
import 'package:miniproject/screen/homepage.dart';
import 'package:miniproject/screen/homepage_grid.dart';
import 'package:miniproject/utils/utils.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class EmergencyContacts extends StatelessWidget {
  void signUserOut() {}
  Future<void> speakText(String text) async {
    await flutterTts.setLanguage('en-US');
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.55);
    await flutterTts.speak(text);
  }

  final FlutterTts flutterTts = FlutterTts();
  final List<String> itemList = ['Home', 'Camera', 'Profile'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Color.fromRGBO(6, 30, 69, 1),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 9, vertical: 20),
          child: GNav(
            backgroundColor: Color.fromRGBO(6, 30, 69, 1),
            gap: 8,
            tabBackgroundColor: Color.fromRGBO(172, 212, 230, 1),
            padding: EdgeInsets.symmetric(vertical: 13, horizontal: 30),
            tabs: [
              GButton(
                icon: Icons.home,
                iconColor: Color.fromRGBO(67, 236, 227, 1),
                iconActiveColor: Color.fromRGBO(6, 30, 69, 1),
                text: 'Home',
                textStyle: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
                iconSize: 25,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              GButton(
                icon: Icons.remove_red_eye,
                iconColor: Color.fromRGBO(44, 212, 230, 1),
                iconActiveColor: Color.fromRGBO(6, 30, 69, 1),
                text: 'Camera',
                textStyle: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 23,
                    fontWeight: FontWeight.w500),
                iconSize: 33,
                onPressed: () async {
                  speakText(
                    'home',
                  );
                },
              ),
              GButton(
                icon: Icons.settings,
                iconColor: Color.fromRGBO(20, 188, 233, 1),
                iconActiveColor: Color.fromRGBO(6, 30, 69, 1),
                text: 'Settings',
                textStyle: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
                iconSize: 25,
                onPressed: () async {
                  speakText(
                    'Settings',
                  );
                },
              ),
            ],
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromRGBO(6, 30, 69, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(6, 30, 69, 1),
        shadowColor: Color.fromRGBO(128, 45, 83, 1),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MainHomePage(),
                ));
          },
          icon: const Icon(Icons.arrow_back_ios_new),
          color: Color.fromRGBO(6, 30, 69, 1),
          iconSize: 37,
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.call,
              size: 50,
              color: Color.fromRGBO(20, 188, 233, 1),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ));
            },
          ),
          SizedBox(width: 180),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: GradientText(
              'EMERGENCY CONTACTS',
              style: TextStyle(
                fontFamily: 'SourceSansPro',
                fontSize: 33.0,
                fontWeight: FontWeight.w700,
              ),
              colors: [
                Color.fromRGBO(67, 236, 227, 1),
                Color.fromRGBO(20, 188, 233, 1)
              ],
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: EmergencyContactsGrid(),
          )
        ],
      ),
    );
  }
}
