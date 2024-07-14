import 'package:stacked/stacked.dart';

class CalenderViewmodel extends BaseViewModel{
  DateTime today = DateTime.now();
  void ondaySelected(DateTime day, DateTime focusDay){
    today = day;
    rebuildUi();
  }
}