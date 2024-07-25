import '../database.dart';

class QuestionsTable extends SupabaseTable<QuestionsRow> {
  @override
  String get tableName => 'questions';

  @override
  QuestionsRow createRow(Map<String, dynamic> data) => QuestionsRow(data);
}

class QuestionsRow extends SupabaseDataRow {
  QuestionsRow(super.data);

  @override
  SupabaseTable get table => QuestionsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get question => getField<String>('question')!;
  set question(String value) => setField<String>('question', value);

  String? get image => getField<String>('image');
  set image(String? value) => setField<String>('image', value);

  String get optionA => getField<String>('option_a')!;
  set optionA(String value) => setField<String>('option_a', value);

  String get optionB => getField<String>('option_b')!;
  set optionB(String value) => setField<String>('option_b', value);

  String get optionC => getField<String>('option_c')!;
  set optionC(String value) => setField<String>('option_c', value);

  String get correctOption => getField<String>('correct_option')!;
  set correctOption(String value) => setField<String>('correct_option', value);
}
