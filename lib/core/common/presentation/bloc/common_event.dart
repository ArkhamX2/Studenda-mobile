part of 'common_bloc.dart';

@freezed
class CommonEvent with _$CommonEvent {
  const factory CommonEvent.started() = _Started;
  const factory CommonEvent.load() = _Load;
}
