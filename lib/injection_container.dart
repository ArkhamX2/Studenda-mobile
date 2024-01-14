import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:studenda_mobile/core/network/network_info.dart';
import 'package:studenda_mobile/feature/auth/data/datasources/auth_remote_datasource.dart';
import 'package:studenda_mobile/feature/auth/data/repositories/auth_repository_impl.dart';
import 'package:studenda_mobile/feature/auth/domain/repositories/auth_repository.dart';
import 'package:studenda_mobile/feature/auth/domain/usecases/auth.dart';
import 'package:studenda_mobile/feature/auth/presentation/bloc/bloc/auth_bloc.dart';
import 'package:studenda_mobile/feature/group_selection/data/datasources/course_remote_data_source.dart';
import 'package:studenda_mobile/feature/group_selection/data/datasources/department_remote_data_source.dart';
import 'package:studenda_mobile/feature/group_selection/data/datasources/group_remote_data_source.dart';
import 'package:studenda_mobile/feature/group_selection/data/repositories/course_repository_impl.dart';
import 'package:studenda_mobile/feature/group_selection/data/repositories/department_repository_impl.dart';
import 'package:studenda_mobile/feature/group_selection/data/repositories/group_repository_impl.dart';
import 'package:studenda_mobile/feature/group_selection/domain/entities/course_entity.dart';
import 'package:studenda_mobile/feature/group_selection/domain/entities/department_entity.dart';
import 'package:studenda_mobile/feature/group_selection/domain/entities/group_entity.dart';
import 'package:studenda_mobile/feature/group_selection/domain/repositories/course_repository.dart';
import 'package:studenda_mobile/feature/group_selection/domain/repositories/department_repository.dart';
import 'package:studenda_mobile/feature/group_selection/domain/repositories/groups_repository.dart';
import 'package:studenda_mobile/feature/group_selection/domain/usecases/load_courses.dart';
import 'package:studenda_mobile/feature/group_selection/domain/usecases/load_departments.dart';
import 'package:studenda_mobile/feature/group_selection/domain/usecases/load_groups.dart';
import 'package:studenda_mobile/feature/group_selection/presentation/bloc/course_cubit/course_cubit.dart';
import 'package:studenda_mobile/feature/group_selection/presentation/bloc/department_cubit/department_cubit.dart';
import 'package:studenda_mobile/feature/group_selection/presentation/bloc/group_cubit/group_cubit.dart';
import 'package:studenda_mobile/feature/group_selection/presentation/bloc/main_group_selection_bloc/main_group_selection_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //! Features
  //! Auth
  // Bloc
  sl.registerFactory(
    () => AuthBloc(
      authUseCase: sl(),
    ),
  );

  // Use cases
  sl.registerLazySingleton(
    () => Auth(
      authRepository: sl(),
    ),
  );

  // Repository
  sl.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(
      remoteDataSource: sl(),
      networkInfo: sl(),
    ),
  );

  //! Data sources

  sl.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(
      client: sl(),
    ),
  );

  //! Groupselection
  // Bloc
  sl.registerFactory(
    () => MainGroupSelectionBloc(
      selectedGroup: const GroupEntity(id: -1, name: ""),
      selectedCourse: const CourseEntity(name: ""),
      selectedDepartment: const DepartmentEntity(name: ""),
    ),
  );

  sl.registerFactory(
    () => GroupCubit(
      loadGroups: sl(),
    ),
  );
  sl.registerFactory(
    () => CourseCubit(
      loadCourses: sl(),
    ),
  );
  sl.registerFactory(
    () => DepartmentCubit(
      loadDepartments: sl(),
    ),
  );

  // Use cases
  sl.registerLazySingleton(
    () => LoadGroups(
      groupRepository: sl(),
    ),
  );
  sl.registerLazySingleton(
    () => LoadCourses(
      courseRepository: sl(),
    ),
  );
  sl.registerLazySingleton(
    () => LoadDepartments(
      departmentRepository: sl(),
    ),
  );

  // Repository
  sl.registerLazySingleton<GroupRepository>(
    () => GroupRepositoryImpl(
      remoteDataSource: sl(),
      networkInfo: sl(),
    ),
  );
  sl.registerLazySingleton<CourseRepository>(
    () => CourseRepositoryImpl(
      remoteDataSource: sl(),
      networkInfo: sl(),
    ),
  );
  sl.registerLazySingleton<DepartmentRepository>(
    () => DepartmentRepositoryImpl(
      remoteDataSource: sl(),
      networkInfo: sl(),
    ),
  );

  //! Data sources

  sl.registerLazySingleton<GroupRemoteDataSource>(
    () => GroupRemoteDataSourceImpl(
      client: sl(),
    ),
  );

  sl.registerLazySingleton<CourseRemoteDataSource>(
    () => CourseRemoteDataSourceImpl(
      client: sl(),
    ),
  );

  sl.registerLazySingleton<DepartmentRemoteDataSource>(
    () => DepartmentRemoteDataSourceImpl(
      client: sl(),
    ),
  );
  //! Core

  sl.registerLazySingleton<NetworkInfo>(
    () => NetworkInfoImpl(
      sl(),
    ),
  );

  //! External

  // final sharedPreferences = await SgaredPreferences.getInstance();
  // sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => http.Client());
  sl.registerLazySingleton(
    () => Connectivity(),
  );
}
