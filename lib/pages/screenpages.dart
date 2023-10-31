import 'package:flutter/material.dart';
import 'package:furniture_apps/pages/screenpages_two.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenPage extends StatefulWidget {
  const ScreenPage({super.key});

  @override
  State<ScreenPage> createState() => _ScreenPageState();
}

class _ScreenPageState extends State<ScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/images/screen1.png',
              fit: BoxFit.fill,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('MAGICAL',
                    style: GoogleFonts.montserrat(
                        fontSize: 44,
                        fontWeight: FontWeight.w500,
                        color: Colors.white)),
                Text(
                  'Furniture',
                  style: GoogleFonts.pinyonScript(
                      fontSize: 42, color: Colors.white),
                ),
                const SizedBox(
                  height: 200,
                ),
              ],
            ),
          ),
          Stack(
            children: [
              Positioned(
                  bottom: 50,
                  left: 20,
                  child: Text('Find the best \nhome furniture \nfor you rooms.',
                      style: GoogleFonts.montserrat(
                          fontSize: 28,
                          fontWeight: FontWeight.w500,
                          color: Colors.white)))
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .pushReplacement(MaterialPageRoute(builder: (context) {
            return const ScreenPagesTwo();
          }));
        },
        backgroundColor: const Color(0xffABC4AA),
        child: const Icon(
          Icons.arrow_forward_outlined,
          color: Colors.white,
        ),
      ),
    );
  }
}
