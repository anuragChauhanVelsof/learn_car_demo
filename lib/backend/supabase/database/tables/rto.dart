import '../database.dart';

class RtoTable extends SupabaseTable<RtoRow> {
  @override
  String get tableName => 'rto';

  @override
  RtoRow createRow(Map<String, dynamic> data) => RtoRow(data);
}

class RtoRow extends SupabaseDataRow {
  RtoRow(super.data);

  @override
  SupabaseTable get table => RtoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get rto => getField<String>('rto')!;
  set rto(String value) => setField<String>('rto', value);
}
