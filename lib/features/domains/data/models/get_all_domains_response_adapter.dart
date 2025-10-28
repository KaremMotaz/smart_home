import 'package:hive/hive.dart';
import 'get_all_domains_response.dart';

class GetAllDomainsResponseAdapter extends TypeAdapter<GetAllDomainsResponse> {
  @override
  final int typeId = 1;

  @override
  GetAllDomainsResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };

    return GetAllDomainsResponse(
      domains: (fields[0] as List).cast<Domain>(),
      limit: fields[1] as int,
      total: fields[2] as int,
    );
  }

  @override
  void write(BinaryWriter writer, GetAllDomainsResponse obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.domains)
      ..writeByte(1)
      ..write(obj.limit)
      ..writeByte(2)
      ..write(obj.total);
  }
}
