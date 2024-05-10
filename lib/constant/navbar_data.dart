import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skygoal/Screens/Navbar_Screens/AccountScreen.dart';
import 'package:skygoal/Screens/Navbar_Screens/Home_Screen.dart';
import 'package:skygoal/Screens/Navbar_Screens/SavedScreen.dart';
import 'package:skygoal/Screens/Navbar_Screens/SavedSearchScreen.dart';

class NavbarData
{
  static List<Widget> screens=[
    HomeScreen(),
    SavedSearchScreen(),
    SavedScreen(),
    AccountScreen(),
  ];

  static List<String> students=[
    'assets/images/stu1.jpg',
    'assets/images/stu2.jpg',
    'assets/images/stu3.jpg',
    'assets/images/stu4.jpg',
  ];

  static List<String> studentName=[
    'Lalit Kumar',
    'Riya Singh',
    'Sonam Sharma',
    'Simran ',
  ];

}

