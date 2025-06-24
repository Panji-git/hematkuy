import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class AddTransactionPage extends StatefulWidget {
  const AddTransactionPage({super.key});

  @override
  State<AddTransactionPage> createState() => _AddTransactionPageState();
}

class _AddTransactionPageState extends State<AddTransactionPage> {
  int selectedIndex = 0; 

  final List<String> opsi = ['Pendapatan', 'Pengeluaran', 'Tabungan'];
  final List<Color> warna = [Color(0xff7857FF), Color(0xff7857FF), Color(0xff7857FF)];
  final TextEditingController _nominalController = TextEditingController();
  final TextEditingController _deskripsiController = TextEditingController();
  DateTime? selectedDate;
  

  void _selectDate(BuildContext context) async {
    final now = DateTime.now();
    final picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? now,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
      helpText: 'Pilih Tanggal Transaksi',
      cancelText: 'Batal',
      confirmText: 'Pilih',
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("Tambah Transaksi",
      style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 20),),),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(3, (index) {
                bool isSelected = index == selectedIndex;
                return Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      decoration: BoxDecoration(
                        color: isSelected ? warna[index].withOpacity(0.2) : const Color.fromARGB(255, 255, 255, 255),
                        border: Border.all(
                          color: isSelected ? warna[index] : Color(0xff7857FF),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          opsi[index],
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: isSelected ? warna[index] : Colors.black87,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
            const SizedBox(height: 30),
            TextField(
              controller: _nominalController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Nominal",
                border: OutlineInputBorder(),
                prefixText: "Rp. ",
              ),
            ),

            const SizedBox(height: 20),

            // 🗓️ Input Tanggal (pakai Date Picker)
            GestureDetector(
              onTap: () => _selectDate(context),
              child: AbsorbPointer(
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Tanggal",
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.calendar_today),
                    hintText: selectedDate != null
                        ? DateFormat('dd MMMM yyyy').format(selectedDate!)
                        : "Pilih tanggal",
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // 📝 Input Deskripsi
            TextField(
              controller: _deskripsiController,
              maxLines: 2,
              decoration: InputDecoration(
                labelText: "Deskripsi",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 40),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff7857FF),
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )
                ),
                onPressed: () {
                  // Aksi simpan
                  final transaksi = {
                    'tipe': opsi[selectedIndex],
                    'nominal': _nominalController.text,
                    'tanggal': selectedDate != null
                        ? DateFormat('dd MMMM yyyy').format(selectedDate!)
                        : '',
                    'deskripsi': _deskripsiController.text,
                  };
                  print("Data Disimpan: $transaksi");
                  // Bisa tambahkan navigasi atau snackbar di sini
                },
                child: Text(
                  'TAMBAH',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // 🖼️ Logo Aplikasi
            Image.asset(
              'assets/images/logo.png',
              width: 100,
              height: 100,
            ),

          ],
        ),
      )
    );
  }
}