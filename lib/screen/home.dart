import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff7857FF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //area profil
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 14),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 24,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.person, color: Colors.deepPurpleAccent),
                    ),
                    const SizedBox(width: 12),
                    Text(
                      "Halo, Username",
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              //container putih
              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  // ✅ Di sini kita ubah jadi Column
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // ✅ Teks di atas
                      Text(
                        "Rp. 999.999.999",
                        style: GoogleFonts.poppins(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 16),

                      // ✅ Barisan 3 kolom icon
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Kolom 1
                          Column(
                            children: [
                              Icon(Icons.wallet, color: Colors.greenAccent),
                              Text(
                                "E-WALLET",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Rp. 10.000.000",
                                style: GoogleFonts.poppins(fontSize: 12),
                              ),
                            ],
                          ),

                          // Kolom 2
                          Column(
                            children: [
                              Icon(Icons.money, color: const Color.fromARGB(255, 251, 188, 62)),
                              Text(
                                "CASH",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Rp. 5.000.000",
                                style: GoogleFonts.poppins(fontSize: 12),
                              ),
                            ],
                          ),

                          // Kolom 3
                          Column(
                            children: [
                              Icon(Icons.attach_money, color: Colors.amber),
                              Text(
                                "SAVINGS",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Rp. 1.000.000",
                                style: GoogleFonts.poppins(fontSize: 12),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              // Tambahan konten lain di bawah...
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
                child: Container(
                  width: double.infinity,
                  constraints: BoxConstraints(
                    minHeight: MediaQuery.of(context).size.height *0.7,
                  ),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(top: Radius.circular(0)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Transaksi Terakhir",
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 16),

                      // ✅ Contoh transaksi
                      Card(
                        color: Color(0xffDBD2FF),
                        elevation: 2,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                        child: ListTile(
                          leading: Icon(Icons.arrow_upward, color: const Color.fromARGB(255, 255, 23, 23),),
                          title: Text("Deskripsi"),
                          subtitle: Text("11 Juni 2025 | E-WALLET"),
                          trailing: Text("Rp. 300.000", style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0), fontSize: 16)),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Card(
                        color: Color(0xffDBD2FF),
                        elevation: 2,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                        child: ListTile(
                          leading: Icon(Icons.arrow_downward, color: const Color.fromARGB(255, 28, 169, 0),),
                          title: Text("Deskripsi"),
                          subtitle: Text("11 Juni 2025 | CASH"),
                          trailing: Text("Rp. 300.000", style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0), fontSize: 16)),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Card(
                        color: Color(0xffDBD2FF),
                        elevation: 2,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                        child: ListTile(
                          leading: Icon(Icons.arrow_upward, color: const Color.fromARGB(255, 255, 23, 23),),
                          title: Text("Deskripsi"),
                          subtitle: Text("11 Juni 2025"),
                          trailing: Text("Rp. 300.000", style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0), fontSize: 16)),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Card(
                        color: Color(0xffDBD2FF),
                        elevation: 2,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                        child: ListTile(
                          leading: Icon(Icons.arrow_downward, color: const Color.fromARGB(255, 28, 169, 0),),
                          title: Text("Deskripsi"),
                          subtitle: Text("11 Juni 2025"),
                          trailing: Text("Rp. 300.000", style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0), fontSize: 16)),
                        ),
                      ),
                      
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
