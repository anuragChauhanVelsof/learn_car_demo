import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://umgetrplkbsfwiiahiue.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InVtZ2V0cnBsa2JzZndpaWFoaXVlIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjE4MDU1MDEsImV4cCI6MjAzNzM4MTUwMX0.rN4c3sM8LMPuViJJkLfpt_K_aTZhYC1mtHIJyN3eLA8';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
