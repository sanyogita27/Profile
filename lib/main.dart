import 'package:flutter/material.dart';
import 'package:flutter_pro1/booking_system.dart';

void main() => runApp(const MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: const [
                    Text(
                      "Hi Sam",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "Let's Discover",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    )
                  ],
                ),
                const CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.red,
                  backgroundImage: NetworkImage(
                      "https://assets3.lottiefiles.com/avatars/300_20577-489096009.jpg"),
                )
              ],
            )),
        body: const BookingSystem(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
