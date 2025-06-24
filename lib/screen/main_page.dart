import 'package:flutter/material.dart';
import 'package:hematkuy/screen/home.dart';
import 'package:hematkuy/screen/tambah_transaksi.dart';
import 'package:hematkuy/screen/transaksi.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<Widget> _children = [HomePage(), TransaksiPage()];
  int currentIndex = 0;

  void onTapTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.large(onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => AddTransactionPage(),
          )).
          then((value) {
            setState(() {});
          });
      }, 
        backgroundColor: Color(0xff7857FF), 
        shape: const CircleBorder(),
        child: Icon(Icons.add, color: Colors.white),
      ),
      body: _children[currentIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        // notchMargin: 6.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(onPressed: (){
            onTapTapped(0);
          }, icon: Icon(Icons.home, size: 34, color: currentIndex == 0 ? Color(0xff7857FF) : Colors.grey,)),
          SizedBox(width: 90,),
          IconButton(onPressed: (){
            onTapTapped(1);
          }, icon: Icon(Icons.list, size: 34, color: currentIndex == 1 ? Color(0xff7857FF) : Colors.grey,))
          ]),
        )
    );
  }
}