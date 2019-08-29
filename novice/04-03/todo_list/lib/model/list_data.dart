import 'data_model.dart';

class ListData {
  static var empty = ListData(new List());

  final List<Data> data;

  ListData(this.data);

  ListData.fromJson(Map<String, dynamic> json)
      : data = (json['data'] as List)
            .map((i) => new Data.fromJson(i as Map<String, dynamic>))
            .toList();

  Map<String, dynamic> toJson() => {'data': data};

  @override
  String toString() => "$data";
}
