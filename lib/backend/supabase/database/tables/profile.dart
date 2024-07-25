import '../database.dart';

class ProfileTable extends SupabaseTable<ProfileRow> {
  @override
  String get tableName => 'profile';

  @override
  ProfileRow createRow(Map<String, dynamic> data) => ProfileRow(data);
}

class ProfileRow extends SupabaseDataRow {
  ProfileRow(super.data);

  @override
  SupabaseTable get table => ProfileTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get fullName => getField<String>('full_name')!;
  set fullName(String value) => setField<String>('full_name', value);

  DateTime get dob => getField<DateTime>('dob')!;
  set dob(DateTime value) => setField<DateTime>('dob', value);

  String get gender => getField<String>('gender')!;
  set gender(String value) => setField<String>('gender', value);

  String get email => getField<String>('email')!;
  set email(String value) => setField<String>('email', value);

  String get address => getField<String>('address')!;
  set address(String value) => setField<String>('address', value);

  String get rto => getField<String>('rto')!;
  set rto(String value) => setField<String>('rto', value);

  String? get userId => getField<String>('userId');
  set userId(String? value) => setField<String>('userId', value);
}
