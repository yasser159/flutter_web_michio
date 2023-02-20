//import 'dart:ffi';

import 'package:flutter/material.dart';

class MyDesktopBody extends StatelessWidget {
  MyDesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[300],
      appBar: AppBar(title: Text("D E S K T O P")),
      body: Row(
        children: [
          //First Column
          Expanded(
            child: Column(
              children: [
                // youtube video
                Padding(
                  padding: EdgeInsets.all(8),
                  child: AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Container(
                        color: Colors.deepPurple[400],
                        child: Center(
                          child: Text(
                            "Video",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 32,
                            ),
                          ),
                        )),
                  ),
                ),

                //comments section & recomanded videos
                Expanded(
                  child: ListView.builder(
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Text("Comment $index"),
                          color: Colors.deepPurple[400],
                          height: 150,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),

          // Second Column
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 200,
              color: Colors.deepPurple[400],
            ),
          )
        ],
      ),
    );
  }
}
