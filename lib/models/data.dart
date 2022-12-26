import 'package:flutter/foundation.dart';
import 'package:quiver/core.dart';


import 'index.dart';

@immutable
class Data {

  const Data({
    required this.records,
  });

  final List<Record> records;

  factory Data.fromJson(Map<String,dynamic> json) => Data(
    records: (json['records'] as List? ?? []).map((e) => Record.fromJson(e as Map<String, dynamic>)).toList()
  );
  
  Map<String, dynamic> toJson() => {
    'records': records.map((e) => e.toJson()).toList()
  };

  Data clone() => Data(
    records: records.map((e) => e.clone()).toList()
  );


  Data copyWith({
    List<Record>? records
  }) => Data(
    records: records ?? this.records,
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is Data && records == other.records;

  @override
  int get hashCode => records.hashCode;
}

@immutable
class Record {

  const Record({
    required this.datasetid,
    required this.recordid,
    required this.fields,
    required this.geometry,
    required this.recordTimestamp,
  });

  final String datasetid;
  final String recordid;
  final Fields fields;
  final Geometry geometry;
  final String recordTimestamp;

  factory Record.fromJson(Map<String,dynamic> json) => Record(
    datasetid: json['datasetid'].toString(),
    recordid: json['recordid'].toString(),
    fields: Fields.fromJson(json['fields'] as Map<String, dynamic>),
    geometry: Geometry.fromJson(json['geometry'] as Map<String, dynamic>),
    recordTimestamp: json['record_timestamp'].toString()
  );
  
  Map<String, dynamic> toJson() => {
    'datasetid': datasetid,
    'recordid': recordid,
    'fields': fields.toJson(),
    'geometry': geometry.toJson(),
    'record_timestamp': recordTimestamp
  };

  Record clone() => Record(
    datasetid: datasetid,
    recordid: recordid,
    fields: fields.clone(),
    geometry: geometry.clone(),
    recordTimestamp: recordTimestamp
  );


  Record copyWith({
    String? datasetid,
    String? recordid,
    Fields? fields,
    Geometry? geometry,
    String? recordTimestamp
  }) => Record(
    datasetid: datasetid ?? this.datasetid,
    recordid: recordid ?? this.recordid,
    fields: fields ?? this.fields,
    geometry: geometry ?? this.geometry,
    recordTimestamp: recordTimestamp ?? this.recordTimestamp,
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is Record && datasetid == other.datasetid && recordid == other.recordid && fields == other.fields && geometry == other.geometry && recordTimestamp == other.recordTimestamp;

  @override
  int get hashCode => datasetid.hashCode ^ recordid.hashCode ^ fields.hashCode ^ geometry.hashCode ^ recordTimestamp.hashCode;
}

@immutable
class Fields {

  const Fields({
    required this.xL93,
    required this.xWgs84,
    required this.influence,
    required this.yL93,
    required this.test,
    required this.nomCom,
    required this.objectid2,
    required this.idPollUe,
    required this.geoShape,
    required this.nomStation,
    required this.dateFin,
    required this.unite,
    required this.geoPoint2d,
    required this.nomDept,
    required this.metrique,
    required this.nomPoll,
    required this.typologie,
    required this.statutValid,
    required this.codeStation,
    required this.dateDebut,
    required this.inseeCom,
    required this.valeur,
    required this.yWgs84,
  });

  final int xL93;
  final double xWgs84;
  final String influence;
  final int yL93;
  final List<double> test;
  final String nomCom;
  final int objectid2;
  final int idPollUe;
  final GeoShape geoShape;
  final String nomStation;
  final String dateFin;
  final String unite;
  final List<double> geoPoint2d;
  final String nomDept;
  final String metrique;
  final String nomPoll;
  final String typologie;
  final String statutValid;
  final String codeStation;
  final String dateDebut;
  final String inseeCom;
  final String valeur;
  final double yWgs84;

  factory Fields.fromJson(Map<String,dynamic> json) => Fields(
    xL93: json['x_l93'] as int,
    xWgs84: (json['x_wgs84'] as num).toDouble(),
    influence: json['influence'].toString(),
    yL93: json['y_l93'] as int,
    test: (json['test'] as List? ?? []).map((e) => e as double).toList(),
    nomCom: json['nom_com'].toString(),
    objectid2: json['objectid2'] as int,
    idPollUe: json['id_poll_ue'] as int,
    geoShape: GeoShape.fromJson(json['geo_shape'] as Map<String, dynamic>),
    nomStation: json['nom_station'].toString(),
    dateFin: json['date_fin'].toString(),
    unite: json['unite'].toString(),
    geoPoint2d: (json['geo_point_2d'] as List? ?? []).map((e) => e as double).toList(),
    nomDept: json['nom_dept'].toString(),
    metrique: json['metrique'].toString(),
    nomPoll: json['nom_poll'].toString(),
    typologie: json['typologie'].toString(),
    statutValid: json['statut_valid'].toString(),
    codeStation: json['code_station'].toString(),
    dateDebut: json['date_debut'].toString(),
    inseeCom: json['insee_com'].toString(),
    valeur: json['valeur'].toString(),
    yWgs84: (json['y_wgs84'] as num).toDouble()
  );
  
  Map<String, dynamic> toJson() => {
    'x_l93': xL93,
    'x_wgs84': xWgs84,
    'influence': influence,
    'y_l93': yL93,
    'test': test.map((e) => e.toString()).toList(),
    'nom_com': nomCom,
    'objectid2': objectid2,
    'id_poll_ue': idPollUe,
    'geo_shape': geoShape.toJson(),
    'nom_station': nomStation,
    'date_fin': dateFin,
    'unite': unite,
    'geo_point_2d': geoPoint2d.map((e) => e.toString()).toList(),
    'nom_dept': nomDept,
    'metrique': metrique,
    'nom_poll': nomPoll,
    'typologie': typologie,
    'statut_valid': statutValid,
    'code_station': codeStation,
    'date_debut': dateDebut,
    'insee_com': inseeCom,
    'valeur': valeur,
    'y_wgs84': yWgs84
  };

  Fields clone() => Fields(
    xL93: xL93,
    xWgs84: xWgs84,
    influence: influence,
    yL93: yL93,
    test: test.toList(),
    nomCom: nomCom,
    objectid2: objectid2,
    idPollUe: idPollUe,
    geoShape: geoShape.clone(),
    nomStation: nomStation,
    dateFin: dateFin,
    unite: unite,
    geoPoint2d: geoPoint2d.toList(),
    nomDept: nomDept,
    metrique: metrique,
    nomPoll: nomPoll,
    typologie: typologie,
    statutValid: statutValid,
    codeStation: codeStation,
    dateDebut: dateDebut,
    inseeCom: inseeCom,
    valeur: valeur,
    yWgs84: yWgs84
  );


  Fields copyWith({
    int? xL93,
    double? xWgs84,
    String? influence,
    int? yL93,
    List<double>? test,
    String? nomCom,
    int? objectid2,
    int? idPollUe,
    GeoShape? geoShape,
    String? nomStation,
    String? dateFin,
    String? unite,
    List<double>? geoPoint2d,
    String? nomDept,
    String? metrique,
    String? nomPoll,
    String? typologie,
    String? statutValid,
    String? codeStation,
    String? dateDebut,
    String? inseeCom,
    String? valeur,
    double? yWgs84
  }) => Fields(
    xL93: xL93 ?? this.xL93,
    xWgs84: xWgs84 ?? this.xWgs84,
    influence: influence ?? this.influence,
    yL93: yL93 ?? this.yL93,
    test: test ?? this.test,
    nomCom: nomCom ?? this.nomCom,
    objectid2: objectid2 ?? this.objectid2,
    idPollUe: idPollUe ?? this.idPollUe,
    geoShape: geoShape ?? this.geoShape,
    nomStation: nomStation ?? this.nomStation,
    dateFin: dateFin ?? this.dateFin,
    unite: unite ?? this.unite,
    geoPoint2d: geoPoint2d ?? this.geoPoint2d,
    nomDept: nomDept ?? this.nomDept,
    metrique: metrique ?? this.metrique,
    nomPoll: nomPoll ?? this.nomPoll,
    typologie: typologie ?? this.typologie,
    statutValid: statutValid ?? this.statutValid,
    codeStation: codeStation ?? this.codeStation,
    dateDebut: dateDebut ?? this.dateDebut,
    inseeCom: inseeCom ?? this.inseeCom,
    valeur: valeur ?? this.valeur,
    yWgs84: yWgs84 ?? this.yWgs84,
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is Fields && xL93 == other.xL93 && xWgs84 == other.xWgs84 && influence == other.influence && yL93 == other.yL93 && test == other.test && nomCom == other.nomCom && objectid2 == other.objectid2 && idPollUe == other.idPollUe && geoShape == other.geoShape && nomStation == other.nomStation && dateFin == other.dateFin && unite == other.unite && geoPoint2d == other.geoPoint2d && nomDept == other.nomDept && metrique == other.metrique && nomPoll == other.nomPoll && typologie == other.typologie && statutValid == other.statutValid && codeStation == other.codeStation && dateDebut == other.dateDebut && inseeCom == other.inseeCom && valeur == other.valeur && yWgs84 == other.yWgs84;

  @override
  int get hashCode => xL93.hashCode ^ xWgs84.hashCode ^ influence.hashCode ^ yL93.hashCode ^ test.hashCode ^ nomCom.hashCode ^ objectid2.hashCode ^ idPollUe.hashCode ^ geoShape.hashCode ^ nomStation.hashCode ^ dateFin.hashCode ^ unite.hashCode ^ geoPoint2d.hashCode ^ nomDept.hashCode ^ metrique.hashCode ^ nomPoll.hashCode ^ typologie.hashCode ^ statutValid.hashCode ^ codeStation.hashCode ^ dateDebut.hashCode ^ inseeCom.hashCode ^ valeur.hashCode ^ yWgs84.hashCode;
}

@immutable
class GeoShape {

  const GeoShape({
    required this.coordinates,
    required this.type,
  });

  final List<double> coordinates;
  final String type;

  factory GeoShape.fromJson(Map<String,dynamic> json) => GeoShape(
    coordinates: (json['coordinates'] as List? ?? []).map((e) => e as double).toList(),
    type: json['type'].toString()
  );
  
  Map<String, dynamic> toJson() => {
    'coordinates': coordinates.map((e) => e.toString()).toList(),
    'type': type
  };

  GeoShape clone() => GeoShape(
    coordinates: coordinates.toList(),
    type: type
  );


  GeoShape copyWith({
    List<double>? coordinates,
    String? type
  }) => GeoShape(
    coordinates: coordinates ?? this.coordinates,
    type: type ?? this.type,
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is GeoShape && coordinates == other.coordinates && type == other.type;

  @override
  int get hashCode => coordinates.hashCode ^ type.hashCode;
}

@immutable
class Geometry {

  const Geometry({
    required this.type,
    required this.coordinates,
  });

  final String type;
  final List<double> coordinates;

  factory Geometry.fromJson(Map<String,dynamic> json) => Geometry(
    type: json['type'].toString(),
    coordinates: (json['coordinates'] as List? ?? []).map((e) => e as double).toList()
  );
  
  Map<String, dynamic> toJson() => {
    'type': type,
    'coordinates': coordinates.map((e) => e.toString()).toList()
  };

  Geometry clone() => Geometry(
    type: type,
    coordinates: coordinates.toList()
  );


  Geometry copyWith({
    String? type,
    List<double>? coordinates
  }) => Geometry(
    type: type ?? this.type,
    coordinates: coordinates ?? this.coordinates,
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is Geometry && type == other.type && coordinates == other.coordinates;

  @override
  int get hashCode => type.hashCode ^ coordinates.hashCode;
}
