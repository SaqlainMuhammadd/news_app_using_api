import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'package:google_fonts/google_fonts.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  @override
  Widget build(BuildContext context) {
    final hight = MediaQuery.sizeOf(context).height * 1;
    final Width = MediaQuery.sizeOf(context).width * 1;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 202, 84, 84),
      body: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'images/assets/5.png',
            fit: BoxFit.cover,
            height: hight * 0.5,
            width: Width * 1,
          ),
          SizedBox(
            height: hight * .04,
          ),
          Text(
            'Today News',
            style: TextStyle(
                color: Colors.blue, fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: hight * .08,
          ),
          SpinKitChasingDots(
            color: Colors.blue,
            size: 40,
          )
        ],
      )),
    );
  }
}
