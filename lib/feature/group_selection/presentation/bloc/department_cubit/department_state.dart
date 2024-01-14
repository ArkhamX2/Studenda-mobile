part of 'department_cubit.dart';

@freezed
class DepartmentState with _$DepartmentState {
  const factory DepartmentState.initial() = _Initial;
  const factory DepartmentState.loading() = _Loading;
  const factory DepartmentState.success(List<Department> departments) = _Success;
  const factory DepartmentState.fail([@Default("Unknown error") String message]) = _Fail;
}
