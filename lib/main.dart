import 'package:flutter/material.dart';
import 'package:hotel_booking/home.dart';



void main() {
  runApp(const Myhotel());
}

class Myhotel extends StatelessWidget {
  const Myhotel({super.key, });

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'HOTELS',
      home: HomePage(),
    );
  }
}
