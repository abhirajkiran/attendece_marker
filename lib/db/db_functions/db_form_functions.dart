import 'package:attendence_marker2/db/db_models/form_model.dart';
import 'package:flutter/foundation.dart';
import 'package:hive_flutter/adapters.dart';

ValueNotifier<List<formModel>>formList=ValueNotifier([]);


void addSubject(formModel value)async{
  //formList.value.add(value);
 // print(value.toString());

final subListDB= await Hive.openBox<formModel>('subList_db');

  final _id=await subListDB.add(value);
  value.id=_id;
  formList.value.add(value);
  formList.notifyListeners();
}

Future<void> getAllSublist()async{
  final subListDB= await Hive.openBox<formModel>('subList_db');
  formList.value.clear(); 
 formList.value.addAll(subListDB.values);
}

