import 'package:flutter/material.dart';
import 'package:skygoal/Components/home_header_widegt.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                          height: 30,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.4,
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          color: Colors.red,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ClipPath(
                          clipper: customClipper(),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 0.25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.green,
                            ),
                            margin: EdgeInsets.symmetric(horizontal: 20),
                          ),
                        )
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
    );
  }
}

class customClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width * 0.7, size.height);
    path.quadraticBezierTo(size.width * 0.7, size.height*0.78, size.width, size.height * 0.8);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
