
class PlayerReport {
  final int id;
  final int attribute1;
  final int attribute2;
  final int attribute3;
  final int attribute4;
  final int attribute5;
  final int attribute6;
  final String notes;
  static const String TABLENAME = "playerReport";

  PlayerReport({this.id, this.attribute1, this.attribute2, this.attribute3, this.attribute4, this.attribute5, this.attribute6, this.notes});

  Map<String, dynamic> toMap() {
    return {'id': id, 'attribute1': attribute1, 'attribute2': attribute2, 'attribute3': attribute3, 'attribute4': attribute4, 'attribute5': attribute5, 'attribute6': attribute6,'notes': notes};
  }
}
