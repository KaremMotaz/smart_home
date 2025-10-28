import 'package:hive/hive.dart';
import 'package:smart_home/features/domains/data/models/get_all_domains_response.dart';

class DomainAdapter extends TypeAdapter<Domain> {
  @override
  final int typeId = 2;

  @override
  Domain read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };

    return Domain(
      id: fields[0] as String,
      name: fields[1] as String,
      route: fields[2] as String,
      status: fields[3] as String,
      createdAt: fields[4] as String,
      createdBy: fields[5] as String,
      updatedAt: fields[6] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Domain obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.route)
      ..writeByte(3)
      ..write(obj.status)
      ..writeByte(4)
      ..write(obj.createdAt)
      ..writeByte(5)
      ..write(obj.createdBy)
      ..writeByte(6)
      ..write(obj.updatedAt);
  }
}
