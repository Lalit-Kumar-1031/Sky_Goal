import 'package:flutter/material.dart';
import 'package:skygoal/Components/college_widget.dart';
import 'package:skygoal/Screens/CollegeDetail_Screen.dart';

class CollegelistScreen extends StatefulWidget {
  const CollegelistScreen({super.key});

  @override
  State<CollegelistScreen> createState() => _CollegelistScreenState();
}

class _CollegelistScreenState extends State<CollegelistScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromRGBO(14, 60, 110, 1),
            title: Text("Colleges",style: TextStyle(color: Colors.white),),
            iconTheme: IconThemeData(color: Colors.white),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.13,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(14, 60, 110, 1),
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(30),
                          bottomLeft: Radius.circular(30))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.08,
                        width: MediaQuery.of(context).size.width * 0.65,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search for colleges, schools.....',
                              hintStyle: TextStyle(
                                  color: Color.fromRGBO(214, 214, 214, 1),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700),
                              prefixIcon: Icon(
                                Icons.search,
                                color: Color.fromRGBO(214, 214, 214, 1),
                              )),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                        ),
                        child: Icon(
                          Icons.keyboard_voice_rounded,
                          color: Color.fromRGBO(14, 60, 110, 1),
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                CollegeWidget(
                  applyClick: () {
                  },
                  collegedesc:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu ut imperdiet sed nec ullamcorper.',
                  collegeName: 'GHJK Engineering college',
                  placeDesc: 'More than 1000+ students have been placed',
                  rating: 4.3,
                  view: '468+',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CollegeDetailScreen(),
                        ));
                  },
                  collegeimg: 'assets/images/college1.jpg',
                ),
                SizedBox(
                  height: 20,
                ),
                CollegeWidget(
                  applyClick: () {},
                  collegedesc:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu ut imperdiet sed nec ullamcorper.',
                  collegeName: 'Bachelor of Technology',
                  placeDesc: 'More than 1000+ students have been placed',
                  rating: 4.3,
                  view: '468+',
                  onTap: () {},
                  collegeimg: 'assets/images/college2.jpg',
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
