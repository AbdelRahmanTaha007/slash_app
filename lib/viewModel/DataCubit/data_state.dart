part of 'data_cubit.dart';

@immutable
sealed class DataState {}

final class DataInitial extends DataState {}


class LoadingGetDataState extends DataState {}

class SuccessGetDataState extends DataState {}

class ErrorGetDataState extends DataState {}