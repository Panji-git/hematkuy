import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TransaksiPage extends StatefulWidget {
  const TransaksiPage({super.key});

  @override
  State<TransaksiPage> createState() => _TransaksiPageState();
}

class _TransaksiPageState extends State<TransaksiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff7857FF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Transaksi",
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 60,),
                    Center(
                      child: Text(
                        "Rp. 9.999.999",
                        style: GoogleFonts.poppins(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, 
                        )
                      ),
                    )
                  ],
                ),
              ),

              //container putih 3 icon
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      // Kolom 1: Pendapatan
                        IntrinsicWidth(
                          child: Column(
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(Icons.arrow_downward, color: Colors.green, size: 20,),
                                  SizedBox(width: 2),
                                  Text(
                                    "PENDAPATAN",
                                    style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 12),
                                  ),
                                ],
                              ),
                              SizedBox(height: 6),
                              Text(
                                "Rp. 3.000.000",
                                style: GoogleFonts.poppins(fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                        IntrinsicWidth(
                          child: Column(
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(Icons.arrow_upward, color: const Color.fromARGB(255, 255, 75, 48), size: 20,),
                                  SizedBox(width: 2),
                                  Text(
                                    "PENGELUARAN",
                                    style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 12),
                                  ),
                                ],
                              ),
                              SizedBox(height: 6),
                              Text(
                                "Rp. 3.000.000",
                                style: GoogleFonts.poppins(fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                        IntrinsicWidth(
                          child: Column(
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(Icons.attach_money, color: const Color.fromARGB(255, 196, 173, 2), size: 20,),
                                  SizedBox(width: 0),
                                  Text(
                                    "TABUNGAN",
                                    style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 12),
                                  ),
                                ],
                              ),
                              SizedBox(height: 6),
                              Text(
                                "Rp. 3.000.000",
                                style: GoogleFonts.poppins(fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                      ]
                    ),
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                child: Container(
                  width: double.infinity,
                  constraints: BoxConstraints(
                    minHeight: MediaQuery.of(context).size.height *0.7,
                  ),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Cari Transaksi',
                          prefixIcon: Icon(Icons.search),
                          filled: true,
                          fillColor: const Color.fromARGB(255, 236, 236, 236),
                          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide(
                              color: Color(0xff7857FF),
                              width: 2,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide(
                              color: Color(0xff7857FF),
                              width: 2,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide(
                              color: Color(0xff7857FF),
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10,),

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
        

        )
      ),
    );
    
  }
}