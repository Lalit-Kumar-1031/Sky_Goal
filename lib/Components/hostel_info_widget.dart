import 'package:flutter/material.dart';
import 'package:skygoal/Components/facility_widget.dart';
import 'package:skygoal/Components/slider_widget.dart';
import 'package:skygoal/constant/navbar_data.dart';

class HostelInfoWidget extends StatefulWidget {
  const HostelInfoWidget({super.key});

  @override
  State<HostelInfoWidget> createState() => _HostelInfoWidgetState();
}

class _HostelInfoWidgetState extends State<HostelInfoWidget> {
  int Index = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.04,
            width: MediaQuery.of(context).size.width * 0.9,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      Index = index;
                    });
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.04,
                    width: MediaQuery.of(context).size.width * 0.2,
                    margin: EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Color.fromRGBO(14, 60, 110, 1), width: 2),
                      borderRadius: BorderRadius.circular(8),
                      color: Index == index
                          ? Color.fromRGBO(14, 60, 110, 1)
                          : Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.bed,
                            color: Index != index
                                ? Color.fromRGBO(14, 60, 110, 1)
                                : Colors.white),
                        Text(
                          (index + 1).toString(),
                          style: TextStyle(
                              color: Index != index
                                  ? Color.fromRGBO(14, 60, 110, 1)
                                  : Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 35,
          ),
          SliderP(),
          SizedBox(
            height: 25,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.66,
                  child: Text(
                    'GHJK Engineering Hostel',
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
                      '4.3',
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
            height: 20,
          ),
          Row(
            children: [
              Icon(
                Icons.location_on_outlined,
                color: Color.fromRGBO(74, 74, 74, 1),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur ',
                  style: TextStyle(
                      color: Color.fromRGBO(74, 74, 74, 1),
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
              )
            ],
          ),
          SizedBox(
            height: 14,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.',
              style: TextStyle(
                  color: Color.fromRGBO(150, 151, 151, 1),
                  fontSize: 14,
                  fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Facilities',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              FaciityWidget(
                  imgUrl: 'assets/images/hostelbuilding.png',
                  text: 'College in 400mtrs'),
              SizedBox(
                height: 20,
              ),
              FaciityWidget(
                  imgUrl: 'assets/images/bathroom.png', text: 'Bathrooms : 2'),
              SizedBox(
                height: 45,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Text(
                      'Apply Now',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(14, 60, 110, 1),
                      borderRadius: BorderRadius.circular(12)),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
