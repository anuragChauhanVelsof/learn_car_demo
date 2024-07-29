import '../database.dart';

class StudyTable extends SupabaseTable<StudyRow> {
  @override
  String get tableName => 'study';

  @override
  StudyRow createRow(Map<String, dynamic> data) => StudyRow(data);
}

class StudyRow extends SupabaseDataRow {
  StudyRow(super.data);

  @override
  SupabaseTable get table => StudyTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get duration => getField<String>('duration');
  set duration(String? value) => setField<String>('duration', value);

  String? get imageUrl => getField<String>('image_url');
  set imageUrl(String? value) => setField<String>('image_url', value);

  String? get videoUrl => getField<String>('video_url');
  set videoUrl(String? value) => setField<String>('video_url', value);
}
