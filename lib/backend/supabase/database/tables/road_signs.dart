import '../database.dart';

class RoadSignsTable extends SupabaseTable<RoadSignsRow> {
  @override
  String get tableName => 'road_signs';

  @override
  RoadSignsRow createRow(Map<String, dynamic> data) => RoadSignsRow(data);
}

class RoadSignsRow extends SupabaseDataRow {
  RoadSignsRow(super.data);

  @override
  SupabaseTable get table => RoadSignsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get imageUrl => getField<String>('image_url');
  set imageUrl(String? value) => setField<String>('image_url', value);
}
