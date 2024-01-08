import 'package:flutter/material.dart';

class MyCV extends StatelessWidget {
  const MyCV({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Center(
            child: Column(
              children: [
                Text('My Resume',style: TextStyle(fontSize: 40,color: Colors.blue),),
                SizedBox(height: 20,),
                Text('My Resume',style: TextStyle(fontSize: 40,color: Colors.blue),),
                SizedBox(height: 20,),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
