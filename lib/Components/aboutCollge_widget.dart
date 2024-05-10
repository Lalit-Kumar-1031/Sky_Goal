import 'package:flutter/material.dart';
import 'package:skygoal/constant/navbar_data.dart';

class AboutCollegeWidget extends StatefulWidget {
  const AboutCollegeWidget({super.key});

  @override
  State<AboutCollegeWidget> createState() => _AboutCollegeWidgetState();
}

class _AboutCollegeWidgetState extends State<AboutCollegeWidget> {
  int Index = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 15,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            child: Text(
              'Description',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.',
                style: TextStyle(
                    fontSize: 12,
                    color: Color.fromRGBO(142, 142, 142, 1),
                    fontWeight: FontWeight.w600),
              )),
          SizedBox(
            height: 15,
          ),
          Text(
            'Location',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.25,
            //margin: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/map.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(12)),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            'Student Review',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.15,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: NavbarData.students.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      Index = index;
                    });
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.15,
                    width: MediaQuery.of(context).size.width * 0.3,
                    margin: EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      border:Border.all(color:Index==index?Color.fromRGBO(14, 60, 110, 1):Colors.white,width: 2),
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                            image: AssetImage(NavbarData.students[index]),
                            fit: BoxFit.cover)),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Color.fromRGBO(255, 255, 255, 1),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    blurRadius: 10,
                    spreadRadius: 0.1,
                    blurStyle: BlurStyle.outer)
              ],
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Text(
                    NavbarData.studentName[Index],
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.',
                      style: TextStyle(
                          fontSize: 12,
                          color: Color.fromRGBO(142, 142, 142, 1),
                          fontWeight: FontWeight.w600),
                    )),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.orange,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.orange,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.orange,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.orange,
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                
              ],
            ),
          ),
          SizedBox(height: 25,),
          InkWell(
            onTap: () {

            },
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
                borderRadius: BorderRadius.circular(12)
              ),
            ),
          )
        ],
      ),
    );
  }
}
