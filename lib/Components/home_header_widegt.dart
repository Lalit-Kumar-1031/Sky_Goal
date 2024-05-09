import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;


class HomeHeaderWidget extends StatefulWidget {
  const HomeHeaderWidget({super.key});

  @override
  State<HomeHeaderWidget> createState() => _HomeHeaderWidgetState();
}

class _HomeHeaderWidgetState extends State<HomeHeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.35,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: Color.fromRGBO(14, 60, 110, 1),
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(30),
              bottomLeft: Radius.circular(30))),
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.07,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Find your own way',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Search in 600 colleges around!',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                ],
              ),
              badges.Badge(
                showBadge: true,
                position:
                badges.BadgePosition.topEnd(top: 11, end: 13),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.notifications,
                      color: Colors.white,
                      size: 30,
                    )),
              )
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.07,
          ),
          Row(
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
          )
        ],
      ),
    );
  }
}
