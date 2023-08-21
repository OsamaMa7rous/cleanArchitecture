part of 'auth_cubit.dart';

abstract class AuthState {}

class AuthInitial extends AuthState {}
class ChangCurrentIndexState extends AuthState {}
class EndDuration extends AuthState {}
