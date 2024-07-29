import '../database.dart';

class AllSignsTable extends SupabaseTable<AllSignsRow> {
  @override
  String get tableName => 'all_signs';

  @override
  AllSignsRow createRow(Map<String, dynamic> data) => AllSignsRow(data);
}

class AllSignsRow extends SupabaseDataRow {
  AllSignsRow(super.data);

  @override
  SupabaseTable get table => AllSignsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get imageUrl => getField<String>('image_url');
  set imageUrl(String? value) => setField<String>('image_url', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  int? get signId => getField<int>('sign_id');
  set signId(int? value) => setField<int>('sign_id', value);
}
