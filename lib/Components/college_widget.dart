import 'dart:ffi';

import 'package:flutter/material.dart';

class CollegeWidget extends StatefulWidget {
  final String collegeName;
  final String collegedesc;
  final double rating;
  final VoidCallback applyClick;
  final String placeDesc;
  final String view;
  final VoidCallback onTap;
  final collegeimg;

  const CollegeWidget(
      {super.key,
      required this.collegeName,
      required this.collegedesc,
      required this.rating,
      required this.applyClick,
      required this.placeDesc,
      required this.view,
      required this.onTap,
      this.collegeimg});

  @override
  State<CollegeWidget> createState() => _CollegeWidgetState();
}

class _CollegeWidgetState extends State<CollegeWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.46,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.5),
              blurRadius: 10,
              spreadRadius: 0.1,
              blurStyle: BlurStyle.outer)
        ], borderRadius: BorderRadius.circular(12), color: Colors.white),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(top: 15, left: 15, right: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(12),
                      topLeft: Radius.circular(12)),
                  image: DecorationImage(
                      image: AssetImage(
                        widget.collegeimg,
                      ),
                      fit: BoxFit.cover)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    //padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40)),
                    child: IconButton(onPressed: () {}, icon: Icon(Icons.share)),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    //padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40)),
                    child: IconButton(
                        onPressed: () {}, icon: Icon(Icons.bookmark_border)),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.26,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: Text(
                            widget.collegeName,
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          )),
                      Container(
                        height: 30,
                        width: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Color.fromRGBO(39, 194, 0, 1)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              widget.rating.toString(),
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 15),
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: Text(
                            widget.collegedesc,
                            style: TextStyle(
                                fontSize: 11,
                                color: Color.fromRGBO(142, 142, 142, 1),
                                fontWeight: FontWeight.w700),
                          )),
                      InkWell(
                        onTap: widget.applyClick,
                        child: Container(
                            height: 30,
                            width: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Color.fromRGBO(14, 60, 110, 1)),
                            child: Center(
                              child: Text(
                                'Apply Now',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 9,
                                    fontWeight: FontWeight.bold),
                              ),
                            )),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 1,
                    width: MediaQuery.of(context).size.width * 0.8,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        'assets/images/like.png',
                        height: 30,
                        width: 30,
                      ),
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: Text(
                            widget.placeDesc,
                            style: TextStyle(
                                fontSize: 11,
                                color: Color.fromRGBO(142, 142, 142, 1),
                                fontWeight: FontWeight.w700),
                          )),
                      Row(
                        children: [
                          Icon(
                            Icons.remove_red_eye,
                            color: Color.fromRGBO(169, 169, 169, 1),
                          ),
                          SizedBox(width: 6,),
                          Text(
                            widget.view,
                            style: TextStyle(
                                color: Color.fromRGBO(169, 169, 169, 1)),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
