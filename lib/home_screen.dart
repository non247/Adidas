import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('SHOP'),
              backgroundColor: Colors.white,
              actions: [
                Container(
                  margin: EdgeInsets.only(right: 16.0),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.person_2_outlined,
                    ),
                  ),
                )
              ],
            ),
            body: Expanded(
              child: Column(
                children: [
                //Search Bar
                Container(
                    width: double.infinity,
                    height: 50,
                    decoration: const BoxDecoration(
                      border: Border(
                        top: BorderSide(
                            color: Color.fromARGB(255, 240, 240, 240)),
                        bottom: BorderSide(
                            color: Color.fromARGB(255, 240, 240, 240)),
                      ),
                    ),
                    child: Row(
                      children: [const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Icon(
                        Icons.search,
                        weight: 0.1,
                      ),
                    ),
                    Text(
                      'Find products...',
                      style: GoogleFonts.lato(
                        color: Colors.black26,
                        fontSize: 16.0,
                      ),
                    ),
                    ],
                    )
                    ),
                    SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 16.0),
                        child: Text(
                          'WOMEN',
                          style: GoogleFonts.lato(
                              color: Colors.black,
                              fontSize: 12.0,
                              letterSpacing: 2.0),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 16.0),
                        child: Text(
                          'MEN',
                          style: GoogleFonts.lato(
                              color: Colors.black,
                              fontSize: 12.0,
                              letterSpacing: 2.0),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 16.0),
                        child: Text(
                          'KIDS',
                          style: GoogleFonts.lato(
                              color: Colors.black,
                              fontSize: 12.0,
                              letterSpacing: 2.0),
                        ),
                      ),
                    ],
                  ),
                ), // Category
                SizedBox(
                  width: double.infinity,
                  height: 180,
                  child: Image.asset(
                    'assets/images/image-1.jpg',
                    fit: BoxFit.fitWidth,
                  ),
                ),
                ListTile(
                  minVerticalPadding: 0,
                    leading: Image.asset(
                    'assets/icons/clothing.png',
                    width: 35,
                  height: 35,
                  ),
                    title: const Padding(
                      padding: EdgeInsets.all(16.0),
                    child: Text("CLOTHING"),
                  ),
                ),
                ListTile(
                  minVerticalPadding: 0,
                    leading: Image.asset(
                      'assets/icons/accessories.png',
                    width: 35,
                  height: 35,
                ),
                title: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text("ACCESSORIES"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
