import 'package:flutter/material.dart';

class TopCollegeWidget extends StatefulWidget {
  final String title;
  final String description;
  final String imgUrl;
  final String trailing;
  final VoidCallback onclick;
  const TopCollegeWidget({super.key, required this.title, required this.description, required this.imgUrl, required this.trailing, required this.onclick});

  @override
  State<TopCollegeWidget> createState() => _TopCollegeWidgetState();
}

class _TopCollegeWidgetState extends State<TopCollegeWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onclick,
      child: Stack(
        children: [
          ClipPath(
            clipper: customClipper(),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.25,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.imgUrl,
                    ),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(15),
              ),
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.25,
                padding: EdgeInsets.only(left: 17),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      end: Alignment.topLeft,
                      colors: [
                        Color.fromRGBO(0, 0, 0, 0.5),
                        Color.fromRGBO(0, 0, 0, 0)
                      ],
                      stops: [0.1866, 0.871],
                      transform: GradientRotation(
                          1246.94 * (3.141592653589793 / 180)),
                    ),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          blurStyle: BlurStyle.inner,
                          spreadRadius: 0.8,
                          blurRadius: 88,
                          color: Colors.black.withOpacity(0.4))
                    ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    SizedBox(height: 10,),
                    SizedBox(
                      width:
                      MediaQuery.of(context).size.width * 0.6,
                      child: Text(widget.description,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 12),
                        textAlign: TextAlign.justify,
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height*0.225,
            left: MediaQuery.of(context).size.width*0.73,
            child: Text(widget.trailing,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 12),),),
        ],
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
    path.quadraticBezierTo(
        size.width * 0.7, size.height * 0.78, size.width, size.height * 0.8);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
