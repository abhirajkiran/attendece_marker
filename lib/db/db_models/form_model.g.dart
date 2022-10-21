// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class formModelAdapter extends TypeAdapter<formModel> {
  @override
  final int typeId = 1;

  @override
  formModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return formModel(
      subName: fields[1] as String,
      attGoal: fields[2] as String,
      staffName: fields[3] as String,
      id: fields[0] as int?,
      Attendence: fields[4] as int,
      Absence: fields[5] as int,
      percentage: fields[6] as double,
    );
  }

  @override
  void write(BinaryWriter writer, formModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.subName)
      ..writeByte(2)
      ..write(obj.attGoal)
      ..writeByte(3)
      ..write(obj.staffName)
      ..writeByte(4)
      ..write(obj.Attendence)
      ..writeByte(5)
      ..write(obj.Absence)
      ..writeByte(6)
      ..write(obj.percentage);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is formModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
