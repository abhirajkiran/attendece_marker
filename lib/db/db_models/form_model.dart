
import 'package:hive_flutter/adapters.dart';
part 'form_model.g.dart';

@HiveType(typeId:1)
class formModel{

  @HiveField(0)
   int ?id;
   
  @HiveField(1)
  final String subName;

  @HiveField(2)
  final String attGoal;
  @HiveField(3)
  final String staffName;

  

  formModel({required this.subName,required this.attGoal,required this.staffName,this.id});

  //formModel({ required this.subName,required this.attGoal,required this.staffName,this.id});

}

