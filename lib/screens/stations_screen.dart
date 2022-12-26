import 'package:flutter/material.dart';

import 'detail_screen.dart';

class StationScreen extends StatelessWidget {
  const StationScreen({Key? key, required this.e}) : super(key: key);
  final List e;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Stations')
      ),
      body: ListView.builder(

          itemCount: e.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context)=>DetailScreen(
                        detail: e[index],
                      )
                  ),
                );
              },
              child: Container(
                color: Colors.blue,
                padding: EdgeInsets.all(20.0),
                margin: EdgeInsets.all(20.0),
                child: Center(
                    child: Text(
                      e[index]["nom_station"],
                      style: const TextStyle(
                        fontSize: 20.0, fontWeight: FontWeight.bold,color: Colors.white,),
                    )
                ),
              ),
            );
          }
      ),
    );
  }
}
