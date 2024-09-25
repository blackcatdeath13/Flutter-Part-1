import 'package:flutter/material.dart';
import 'package:flutter_lagu_daerah_app/pages/beer_list_view.dart';
//import 'package:flutter_lagu_daerah_app/pages/home_page.dart';
//import 'package:flutter_lagu_daerah_app/pages/lagu_part.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const BeerListView(),
    );
  }
}
