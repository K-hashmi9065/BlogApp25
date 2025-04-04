import 'package:supabase_flutter/supabase_flutter.dart';

abstract interface class AuthRemoteDataSource {
  Future<String> signUpWithEmailAndPassword({required String name, required String email, required String password});
  Future<String> signInWithEmailAndPassword({required String email, required String password});
  // Future<void> signOut();
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final SupabaseClient supabase;
  AuthRemoteDataSourceImpl({required this.supabase});
  @override
  Future<String> signUpWithEmailAndPassword({required String name, required String email, required String password}) async {
    return '';
  }
  
  @override
  Future<String> signInWithEmailAndPassword({required String email, required String password}) {
   
   
    // TODO: implement signInWithEmailAndPassword
    throw UnimplementedError();
  }
  
  // @override
  // Future<void> signOut() {
  //   // TODO: implement signOut
  //   throw UnimplementedError();
  // }
}