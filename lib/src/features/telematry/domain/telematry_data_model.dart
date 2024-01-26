import 'package:isar/isar.dart';
part 'telematry_data_model.g.dart';

@collection
class TelematryDataModel {
  Id id = Isar.autoIncrement;
  String? sessionId;
  String? checkin;
  String? checkout;
  String? page;
  String? tab;
  String? widget;
  String? location;
  double? longitude;
  double? latitude;
  bool? isOnline;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['sessionId'] = sessionId;
    data['checkin'] = checkin;
    data['checkout'] = checkout;
    data['page'] = page;
    data['tab'] = tab;
    data['widget'] = widget;
    data['location'] = location;
    data['longitude'] = longitude;
    data['latitude'] = latitude;
    data['isOnline'] = isOnline;
    return data;
  }
}
