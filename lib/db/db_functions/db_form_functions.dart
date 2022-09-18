import 'package:attendence_marker2/db/db_models/form_model.dart';
import 'package:flutter/foundation.dart';

ValueNotifier<List<formModel>>formList=ValueNotifier([]);


void addSubject(formModel value){
  formList.value.add(value);
  print(value.toString());
  formList.notifyListeners();
}