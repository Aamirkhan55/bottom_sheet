import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Bottom Sheet'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _showBottomSheet,
          child: const Text('Bottom Sheet Btn')
          )
      ),
    );
  }

 _showBottomSheet() {
  return showModalBottomSheet(
    context: context, 
    builder: (context) {
      return Container(
        height: 300, 
        decoration: const BoxDecoration(
          borderRadius:  BorderRadius.only(
            topLeft: Radius.circular(15), 
            topRight: Radius.circular(15)
            ),
        ),
        child: ListView(
          padding: const EdgeInsets.all(10),
          children: [
          const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
          const SizedBox(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                } , 
                child: const Text('Cancle'),
                ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                 child: const Text('Ok'),
                 ),
            ],
          )
        ]),
      );
    }
    );
 } 
}