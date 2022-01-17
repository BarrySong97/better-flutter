class Recorder {
  DateTime date;
  bool isActive;

  Recorder(this.date, this.isActive);
}

class CubicHabitDTO {
  String name;
  int theme;
  DateTime createDate;
  List<Recorder> recorders;

  CubicHabitDTO(this.name, this.createDate, this.theme, this.recorders);
}
