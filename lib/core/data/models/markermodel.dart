import 'package:google_maps_flutter/google_maps_flutter.dart';

class MarkerModel {
  String? id;
  String? category;
  String? latitude;
  String? longitude;

  MarkerModel({this.id, this.category, this.latitude, this.longitude});

  factory MarkerModel.fromJson(Map<String, dynamic> json) {
    return MarkerModel(
        id: json['id'],
        category: json['category'],
        latitude: json['latitude'],
        longitude: json['longitude']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['category'] = category;
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    return data;
  }
}

extension MarkerLatLong on MarkerModel {
  // LatLng get markerlatlong => LatLng(
  //       double.parse(this.latitude),
  //       double.parse(this.longitude),
  //     );
  LatLng get markerlatlong => LatLng(
        12.00000,
        15.00000,
      );
}
