import 'package:flutter/material.dart';

class WorkInProgressScreen extends StatefulWidget {
  const WorkInProgressScreen({super.key});

  @override
  State<WorkInProgressScreen> createState() => _WorkInProgressScreenState();
}

class _WorkInProgressScreenState extends State<WorkInProgressScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(),
      body: Center(child: Text("No Data Available")),
    ));
  }
}
