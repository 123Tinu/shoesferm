import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: SizedBox(
            height: 40,
            width: size.width,
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search",
                contentPadding: const EdgeInsets.all(10),
                hintStyle: TextStyle(fontSize: 18, color: Colors.grey[800]),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(10)),
                prefixIcon: Icon(
                  Icons.search,
                  size: 25,
                  color: Colors.grey[800],
                ),
              ),
            ),
          )),
    );
  }
}
