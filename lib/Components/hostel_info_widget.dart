import 'package:flutter/material.dart';
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
            height: 20,
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
                                  : Colors.white,fontWeight: FontWeight.bold,fontSize: 16),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
