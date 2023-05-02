import 'package:flutter/material.dart';
import 'package:my_app/screen/beranda/beranda_screen.dart';
import 'package:my_app/screen/pelaporan/buatlaporan_screen.dart';
import 'package:my_app/screen/profil/profilguru_screen.dart';
import 'package:my_app/screen/pelaporan/pelaporan_screen.dart';
import 'package:my_app/screen/pelaporan/isipelaporan_screen.dart';
import 'package:my_app/bottom_nav_bar.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PelaporanScreen extends StatefulWidget {
  const PelaporanScreen({super.key});

  @override
  State<PelaporanScreen> createState() => _PelaporanScreenState();
}

class _PelaporanScreenState extends State<PelaporanScreen> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    Text('Beranda'),
    Text('Profil'),
    Text('Pelaporan'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    if (index == 3) {
      // Jika item yang diklik adalah "Pelaporan"
      _nextPage(); // Panggil fungsi _nextPage
    }
  }

  void _nextPage() {
    Navigator.push(
      // Navigasi ke halaman selanjutnya di sini
      context,
      MaterialPageRoute(builder: (context) => PelaporanScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pelaporan'),
      ),
      backgroundColor: Color(0xFFFFFFFF),
      body: SafeArea(
          child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Container(
                    width: 350,
                    height: 170,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Color(0xFF000000).withOpacity(0.30),
                        width: 1.0,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15.0, left: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Kartu Komunikasi",
                            style: TextStyle(
                              color: Color(0xFF7369FF),
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 14),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      width: 80,
                                      height: 80,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            "asset/image/kartu.png",
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 20.0),
                                      child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      IsipelaporanScreen()),
                                            );
                                          },
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  Color(0xFF38ACFF),
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 80, vertical: 5),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                              )),
                                          child: Text(
                                            "Buka",
                                            style: TextStyle(
                                              color: Color(0xFFFFFFFF),
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          )),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 20.0),
                                      child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      BuatlaporanScreen()),
                                            );
                                          },
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  Color(0xFF9180FF),
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 42, vertical: 8),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                              )),
                                          child: Text(
                                            "Buat Laporan Baru",
                                            style: TextStyle(
                                              color: Color(0xFFFFFFFF),
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          )),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Transform.scale(
                scale: 1.1,
                child: Container(
                  alignment: Alignment.bottomCenter,
                  width: double.infinity,
                  height: 79,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "asset/image/footerprofil.png",
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.note_alt_outlined),
            label: 'Pelaporan',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}