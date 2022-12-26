import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key, required this.detail}) : super(key: key);
  //final DetailPollution detail;
  final Map<dynamic, dynamic> detail;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  //final DetailPollution data=detail

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pollution Details')),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                myContainer("Typologie",0),
                myContainer(widget.detail["typologie"],2),
              ],
            ),
            detailCard("Influence", widget.detail["influence"]),
            detailCard("Id_poll_ue", widget.detail["id_poll_ue"].toString()),
            detailCard("Unite", widget.detail["unite"]),
            detailCard("Metrique", widget.detail["metrique"]),
            detailCard("Nom_dept", widget.detail["nom_dept"]),
            detailCard("Nom_poll", widget.detail["nom_poll"]),
            detailCard("Code_station", widget.detail["code_station"]),
            detailCard("Valeur", widget.detail["valeur"]),
          ],
        ),
      ),
    );
  }

  Expanded myContainer(String param,int flx) {
    return Expanded(
      flex: flx,
      child: Container(
        color: Colors.blue,
        padding: EdgeInsets.all(8.0),
        margin: EdgeInsets.all(10.0),
        child: Center(
          child: Text(param,style: const TextStyle(
              fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white)),
        ),
      ),
    );
  }

  Padding detailCard(String param, String value) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Colors.blue,
        elevation: 4,
        margin: EdgeInsets.symmetric(vertical: 10),
        child: ListTile(
          title: Text(
            param,
            style: const TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold,fontStyle: FontStyle.italic, color: Colors.white),
          ),
          trailing: Text(
              value,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)
          ),
        ),
      ),
    );
  }
}
