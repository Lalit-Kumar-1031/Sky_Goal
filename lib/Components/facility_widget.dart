import 'package:flutter/material.dart';

class FaciityWidget extends StatefulWidget {
  final String imgUrl;
  final String text;
  const FaciityWidget({super.key, required this.imgUrl, required this.text});

  @override
  State<FaciityWidget> createState() => _FaciityWidgetState();
}

class _FaciityWidgetState extends State<FaciityWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
            Image.asset(widget.imgUrl,
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 0.1,
            ),
            SizedBox(width: 15,),
            Text(widget.text,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),
          ],
        ));
  }
}
