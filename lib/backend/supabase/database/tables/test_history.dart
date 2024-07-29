import '../database.dart';

class TestHistoryTable extends SupabaseTable<TestHistoryRow> {
  @override
  String get tableName => 'test_history';

  @override
  TestHistoryRow createRow(Map<String, dynamic> data) => TestHistoryRow(data);
}

class TestHistoryRow extends SupabaseDataRow {
  TestHistoryRow(super.data);

  @override
  SupabaseTable get table => TestHistoryTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  bool? get status => getField<bool>('status');
  set status(bool? value) => setField<bool>('status', value);

  String? get score => getField<String>('score');
  set score(String? value) => setField<String>('score', value);

  String? get timeTaken => getField<String>('time_taken');
  set timeTaken(String? value) => setField<String>('time_taken', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);
}
