import 'dart:convert';
import 'package:http/http.dart';


class PollutionRepository{
  String endpoint='https://www.data.corsica/api/records/1.0/search/?dataset=query-outfields-and-where-1-3d1-and-f-geojson&q=&rows=10&facet=nom_dept&facet=nom_com&facet=nom_station&facet=x_l93&facet=y_l93';
  Future<List<dynamic>> getData() async {
    Response response=await get(Uri.parse(endpoint));
    if(response.statusCode == 200){
      final List result=jsonDecode(response.body)["records"];

      //print(result);
      //List<Data> data=result.map(((e) => Data.fromJson(e))).toList();


      List newList=[];


      List finalList=[];

      var details = new Map();
      final List station=[];

      for(int i=0;i<result.length;i++){

        newList=[];
        //station.add(result[i]["fields"]["nom_station"]);
        //details[result[i]["fields"]["nom_com"]]=
        //dataConv.add(result[i]["fields"]["nom_com"]);
        newList.add(result[i]["fields"]);


        if(details.containsKey(result[i]["fields"]["nom_com"]) ){
          List tempo=details[result[i]["fields"]["nom_com"]];
          tempo.add(result[i]["fields"]);
          details[result[i]["fields"]["nom_com"]]=tempo;
        }else{
          details[result[i]["fields"]["nom_com"]]=newList;
        }

      }

      List tempo=[];
      for (var k in details.keys) {
        tempo=[];
        tempo.add(k);
        tempo.add(details[k]);
        finalList.add(tempo);
        //print("Key : $k, value : ${numMap[k]}");
      }
      //print(finalList.length);

      //print(finalList);



      return finalList;
    }else{
      //print(object)
      throw Exception(response.statusCode);
    }
  }
}