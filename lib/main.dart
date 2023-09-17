import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Fragment/AccessFragment.dart';
import 'Fragment/CircleFragment.dart';
import 'Fragment/ContactsFragment.dart';
import 'Fragment/EmailFragment.dart';
import 'Fragment/HomeFragment.dart';
import 'Fragment/ProfleFragment.dart';
import 'Fragment/SearchFragment.dart';
import 'Fragment/SettingsFragment.dart';




main(){
  runApp( const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      darkTheme: ThemeData(primarySwatch: Colors.green ),
      color: Colors.green,
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
  return DefaultTabController(
      length: 8, // kotogulo tab korbo
      child: Scaffold(
        appBar: AppBar(
          title: Text("My App"),
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Tab(icon: Icon(Icons.home),text: "Home"),
              Tab(icon: Icon(Icons.search), text: 'search'),
              Tab(icon: Icon(Icons.settings),text: 'Settings'),
              Tab(icon: Icon(Icons.person),text: 'profile'),
              Tab(icon: Icon(Icons.email), text: 'email'),
              Tab(icon: Icon(Icons.contacts),text: 'Contacts'),
              Tab(icon: Icon(Icons.access_time),text: 'Access'),
              Tab(icon: Icon(Icons.account_circle),text: 'circle')
            ],
          ),
        ),
      body: TabBarView(
        children: [
          HomeFragment(),
          SearchFragment(),
          SettingsFragment(),
          ProfileFragment(),
          EmailFragment(),
          ContactsFragment(),
          AccessFragment(),
          CircleFragment(),

        ],
      ),
      )
  );
  }

}