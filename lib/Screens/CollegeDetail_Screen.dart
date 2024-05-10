import 'package:flutter/material.dart';
import 'package:skygoal/Components/aboutCollge_widget.dart';
import 'package:skygoal/Components/hostel_info_widget.dart';

class CollegeDetailScreen extends StatefulWidget {
  const CollegeDetailScreen({super.key});

  @override
  State<CollegeDetailScreen> createState() => _CollegeDetailScreenState();
}

class _CollegeDetailScreenState extends State<CollegeDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          actions: [
            InkWell(
              onTap: () {},
              child: Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(35)),
                child: Icon(
                  Icons.bookmark_border,
                  color: Color.fromRGBO(14, 60, 110, 1),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
          ],
          backgroundColor: Color.fromRGBO(14, 60, 110, 1),
        ),
        body: Column(
          children: [
            Image.asset(
              'assets/images/college2.jpg',
              height: MediaQuery.of(context).size.height * 0.25,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: Text(
                          'GHJK Engineering college',
                          style:
                              TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      SizedBox(height: 10,),
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Felis consectetur nulla pharetra praesent hendrerit vulputate viverra. Pellentesque aliquam tempus faucibus est.',
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromRGBO(142, 142, 142, 1),
                                fontWeight: FontWeight.w600),
                          )),
                    ],
                  ),
                  Container(
                    height: 80,
                    width: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(39, 194, 0, 1),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('4.3',style: TextStyle(fontSize: 18,color: Colors.white),),
                        Icon(Icons.star,color: Colors.white,size: 30,),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 15,),
            Container(height: 1,width: double.infinity,
              color: Colors.grey.shade200,
            ),
            TabBar(
              labelColor: Colors.black,
              labelPadding: EdgeInsets.zero,
              indicatorColor: Colors.black,
              labelStyle: TextStyle(color: Colors.white, fontSize: 12),
              tabs: [
                Tab(
                  text: "College Info",
                ),
                Tab(
                  text: "Hostel Info",
                ),
                Tab(
                  text: "Q & A",
                ),
                Tab(
                  text: "Events",
                ),
              ],
            ),
            SizedBox(height: 10),
            // Add a Container to hold TabBarView
            Expanded(
              child: TabBarView(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        AboutCollegeWidget(),
                        SizedBox(height: 50,)
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        HostelInfoWidget(),
                        SizedBox(height: 50,)
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 100,),
                        Center(child: Text("No Question are listed here")),
                        SizedBox(height: 50,)

                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: 100,),
                        Center(child: Text("No Upcomming Events found")),
                        SizedBox(height: 50,)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
