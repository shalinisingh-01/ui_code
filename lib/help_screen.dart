import 'dart:io';

import 'package:best_flutter_ui_templates/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HelpScreen extends StatefulWidget {

  @override
  _HelpScreenState createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.nearlyWhite,
      child: SafeArea(
        top: false,
        child: Scaffold(

          body: GridView(padding: const EdgeInsets.only(top: 200),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              mainAxisExtent: 120,
            ),
            children: [
              FlatButton(
                color: Colors.transparent,
                child: Image.asset('assets/images/tom.png'),
                onPressed:() {
    // Update the state of the app
    // ...
    // Then close the drawer
                  Navigator.pushNamed(context, '/AnalyseCrop');}
              ),FlatButton(
                color: Colors.transparent,
                child: Image.asset('assets/images/potato.png'),
                onPressed:() {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pushNamed(context, '/AnalyseCrop');}
              ),FlatButton(
                color: Colors.transparent,
                child: Image.asset('assets/images/spinach.png'),
                onPressed:() {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pushNamed(context, '/AnalyseCrop');}
              ),FlatButton(
                color: Colors.transparent,
                child: Image.asset('assets/images/peas.png'),
                onPressed:() {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pushNamed(context, '/AnalyseCrop');}
              ),
            ],
          ),
          appBar: AppBar(title: Text("Select the type of plant."),
          ),
          drawer: Drawer(
            // Add a ListView to the drawer. This ensures the user can scroll
            // through the options in the drawer if there isn't enough vertical
            // space to fit everything.
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                  ),
                  child: Text('HOME'),
                ),

                ListTile(


                  title: const Text('ABOUT'),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const Text('LIBRARY'),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ), ListTile(
                  title: const Text('HELP'),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}