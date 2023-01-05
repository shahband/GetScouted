import 'package:untitled5/dbhelper.dart';

class Report {
  late int id;
  late String name;
  late int attribute1;
  late int attribute2;
  late int attribute3;
  late int attribute4;
  late int attribute5;
  late int attribute6;
  late int attribute7;
  late int attribute8;
  late int attribute9;
  late int attribute10;
  late int attribute11;
  late int attribute12;
  late int attribute13;
  late String position;
  late String notes;

  Report(this.id, this.name, this.attribute1, this.attribute2, this.attribute3, this.attribute4, this.attribute5, this.attribute6, this.attribute7, this.attribute8, this.attribute9, this.attribute10, this.attribute11, this.attribute12, this.attribute13, this.position,this.notes);

  Report.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    name = map['name'];
    attribute1 = map['aerialability'];
    attribute2 = map['positionalsense'];
    attribute3 = map['decisionmaking'];
    attribute4 = map['agility'];
    attribute5 = map['workrate'];
    attribute6 = map['tackling'];
    attribute7 = map['interception'];
    attribute8 = map['passing'];
    attribute9 = map['shooting'];
    attribute10 = map['dribbling'];
    attribute11 = map['killfinal'];
    attribute12 = map['finishing'];
    attribute13 = map['skills'];
    position = map['position'];
    notes = map['notes'];
  }

  Map<String, dynamic> toMap() {
    return {
      DatabaseHelper.columnId: id,
      DatabaseHelper.columnName: name,
      DatabaseHelper.columnAttribute1: attribute1,
      DatabaseHelper.columnAttribute2: attribute2,
      DatabaseHelper.columnAttribute3: attribute3,
      DatabaseHelper.columnAttribute4: attribute4,
      DatabaseHelper.columnAttribute5: attribute5,
      DatabaseHelper.columnAttribute6: attribute6,
      DatabaseHelper.columnAttribute7: attribute7,
      DatabaseHelper.columnAttribute8: attribute8,
      DatabaseHelper.columnAttribute9: attribute9,
      DatabaseHelper.columnAttribute10: attribute10,
      DatabaseHelper.columnAttribute11: attribute11,
      DatabaseHelper.columnAttribute12: attribute12,
      DatabaseHelper.columnAttribute13: attribute13,
      DatabaseHelper.columnPosition: position,
      DatabaseHelper.columnNotes: notes,
    };
  }
}