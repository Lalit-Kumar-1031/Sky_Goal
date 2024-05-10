import 'package:flutter/material.dart';
import 'package:skygoal/Components/home_header_widegt.dart';
import 'package:skygoal/Components/top_college_widget.dart';
import 'package:skygoal/Screens/Collegelist_Screen.dart';
import 'package:skygoal/Screens/WorkInPogressScreen.dart';
import 'package:skygoal/constant/navbar_data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int? _selectedRadio; // Initial value for the radio button selection

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return Container(
              padding: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 7,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Sort by",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.clear))
                    ],
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Container(
                    height: 1,
                    color: Colors.grey,
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return RadioListTile<int>(
                        title: Text(NavbarData.bottomsheetOptrions[index]),
                        value: index + 1,
                        groupValue: _selectedRadio,
                        onChanged: (int? value) {
                          _selectedRadio = value!;
                          if (value == 1) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CollegelistScreen(),
                                ));
                          } else {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => WorkInProgressScreen(),
                                ));
                          }
                        },
                      );
                    },
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

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
                            onclick: () => _showBottomSheet(context),
                            imgUrl: 'assets/images/college.jpg',
                            description:
                                'Search through thousands of accredited colleges and universities online to find the right one for you. Apply in 3 min, and connect with your future.',
                            trailing: '+126 Colleges',
                            title: 'Top Colleges',
                          ),
                          SizedBox(height: 20),
                          TopCollegeWidget(
                            onclick: () => _showBottomSheet(context),
                            imgUrl: 'assets/images/school.jpg',
                            title: 'Top Schools',
                            trailing: '+106 Schools',
                            description:
                                'Searching for the best school for you just got easier! With our Advanced School Search, you can easily filter out the schools that are fit for you.',
                          ),
                          SizedBox(height: 20),
                          TopCollegeWidget(
                            onclick: () => _showBottomSheet(context),
                            imgUrl: 'assets/images/exam.jpg',
                            description:
                                'Find an end to end information about the exams that are happening in India',
                            trailing: '+16 Exams',
                            title: 'Exams',
                          ),
                          SizedBox(height: 20),
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
