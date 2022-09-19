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
    );
  }

  @override
  void write(BinaryWriter writer, formModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.subName)
      ..writeByte(2)
      ..write(obj.attGoal)
      ..writeByte(3)
      ..write(obj.staffName);
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
