import 'package:flutter/material.dart';
import 'package:skygoal/Components/home_header_widegt.dart';
import 'package:skygoal/Components/top_college_widget.dart';
import 'package:skygoal/Screens/Collegelist_Screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width,
                // padding: EdgeInsets.symmetric(horizontal: 20),
                child: Stack(
                  children: [
                    Container(
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 0.38,
                          ),
                          TopCollegeWidget(
                            onclick: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => CollegelistScreen(),));

                            },
                            imgUrl: 'assets/images/college.jpg',
                            description:
                                'Search through thousands of accredited colleges and universities online to find the right one for you.  Apply in 3 min, and connect with your future.',
                            trailing: '+126 Colleges',
                            title: 'Top Colleges',
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TopCollegeWidget(
                            onclick: () {

                            },
                            imgUrl:'assets/images/school.jpg' ,
                            title: 'Top Schools',
                            trailing: '+106 Schools',
                            description: 'Searching for the best school for you just got easier! With our Advanced School Search, you can easily filter out the schools that are fit for you.',
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TopCollegeWidget(
                            onclick: () {

                            },
                            imgUrl: 'assets/images/exam.jpg',
                            description: 'Find an end to end information about the exams that are happening in India',
                            trailing: '+16 Exams',
                            title: 'Exams',
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                    HomeHeaderWidget(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
