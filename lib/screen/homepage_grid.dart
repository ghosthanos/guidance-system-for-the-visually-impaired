import 'package:flutter/material.dart';
import 'package:miniproject/Untitled-1.dart';
import 'package:miniproject/models/googlemaps.dart';
import 'package:miniproject/models/grid.dart';
import 'package:miniproject/models/profile_page.dart';
import 'package:miniproject/pages/loginpage.dart';
import 'package:miniproject/utils/utils.dart';
import 'package:audiofileplayer/audiofileplayer.dart';

class MainHomePageGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: allGrid.grid.length,
      itemBuilder: (ctx, i) => Padding(
        padding: const EdgeInsets.all(8),
        child: GestureDetector(
          onTap: () async {
            if (i == 0) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GoogleMap(),
                  ));
            }

            if (i == 1) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ));
            }

            if (i == 2) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ));
            }

            if (i == 3) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ));
            }

            if (i == 5) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Profile(),
                  ));
            }
          },
          child: Container(
            margin: EdgeInsets.only(left: 0, right: 0),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 247, 196, 209),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(128, 45, 83, 1),
                  blurRadius: 10,
                ),
              ],
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  allGrid.grid[i].title,
                  style: MainHeading,
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
      //griddelegates shows how many items u want in a particular row
    );
  }
}
