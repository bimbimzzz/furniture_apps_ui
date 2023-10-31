import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenPagesTwo extends StatefulWidget {
  const ScreenPagesTwo({super.key});

  @override
  State<ScreenPagesTwo> createState() => _ScreenPagesTwoState();
}

class _ScreenPagesTwoState extends State<ScreenPagesTwo> {
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
                Text('Welcome to',
                    style: GoogleFonts.montserrat(
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xffF3DEBA))),
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
                  height: 220,
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          decoration: const BoxDecoration(
                              color: Color(0xffABC4AA),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: Center(
                            child: Text(
                              'Login',
                              style: GoogleFonts.montserrat(
                                  fontSize: 18, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: const Color(0xffABC4AA).withOpacity(0.5),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(15))),
                          child: Center(
                            child: Text(
                              'Register',
                              style: GoogleFonts.montserrat(
                                  fontSize: 18, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 55,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Continue as a guest',
                              style: GoogleFonts.montserrat(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromARGB(
                                      255, 255, 255, 255))),
                          const Icon(
                            Icons.arrow_forward_rounded,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
