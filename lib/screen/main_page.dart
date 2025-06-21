import 'package:flutter/material.dart';
import 'package:hematkuy/screen/home.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.large(onPressed: () {}, 
        backgroundColor: Color(0xff7857FF), 
        shape: const CircleBorder(),
        child: Icon(Icons.add, color: Colors.white),
      ),
      body: HomePage(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        // notchMargin: 6.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(onPressed: (){}, icon: Icon(Icons.home, size: 34,)),
          SizedBox(width: 90,),
          IconButton(onPressed: (){}, icon: Icon(Icons.list, size: 34,))
          ]),
        )
    );
  }
}