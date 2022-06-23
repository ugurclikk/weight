import 'package:freezed_annotation/freezed_annotation.dart';
part 'records.freezed.dart';
part 'records.g.dart';
@freezed
class Record with _$Record{
 
  factory Record(
      {required DateTime dateTime, required int weight,String? note, String? photourl})=_Record;
  factory Record.fromJson(Map<String, dynamic> json) => _$RecordFromJson(json);
}

//flutter pub run build_runner build
//jsonlu aynı yeri tutan bir kayıtcı oluşturma
//dev depe json_serializable: eklemeli

