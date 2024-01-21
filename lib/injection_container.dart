import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:studenda_mobile/core/common/data/datasources/day_position_remote_data_source.dart';
import 'package:studenda_mobile/core/common/data/datasources/subject_position_remote_data_source.dart';
import 'package:studenda_mobile/core/common/data/repositories/day_position_repository_impl.dart';
import 'package:studenda_mobile/core/common/data/repositories/subject_position_repository_impl.dart';
import 'package:studenda_mobile/core/common/domain/repositories/day_position_repository.dart';
import 'package:studenda_mobile/core/common/domain/repositories/subject_position_repository.dart';
import 'package:studenda_mobile/core/common/domain/usecase/get_day_position.dart';
import 'package:studenda_mobile/core/common/domain/usecase/get_subject_position.dart';
import 'package:studenda_mobile/core/common/presentation/bloc/common_bloc.dart';
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
import 'package:studenda_mobile/feature/schedule/data/datasources/schedule_remote_data_source.dart';
import 'package:studenda_mobile/feature/schedule/data/datasources/week_type_remote_data_source.dart';
import 'package:studenda_mobile/feature/schedule/data/repositories/discipline_repository_impl.dart';
import 'package:studenda_mobile/feature/schedule/data/repositories/schedule_repository_impl.dart';
import 'package:studenda_mobile/feature/schedule/data/repositories/teachert_repository_impl.dart';
import 'package:studenda_mobile/feature/schedule/data/repositories/week_type_repository_impl.dart';
import 'package:studenda_mobile/feature/schedule/domain/repositories/discipline_repository.dart';
import 'package:studenda_mobile/feature/schedule/domain/repositories/schedule_repository.dart';
import 'package:studenda_mobile/feature/schedule/domain/repositories/teacher_repository.dart';
import 'package:studenda_mobile/feature/schedule/domain/repositories/week_type_repository.dart';
import 'package:studenda_mobile/feature/schedule/domain/usecases/get_discipline_list.dart';
import 'package:studenda_mobile/feature/schedule/domain/usecases/get_schedule.dart';
import 'package:studenda_mobile/feature/schedule/domain/usecases/get_teacher_list.dart';
import 'package:studenda_mobile/feature/schedule/domain/usecases/get_week_type.dart';
import 'package:studenda_mobile/feature/schedule/presentation/bloc/schedule_bloc.dart';

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

//! Common
  // Bloc
  sl.registerFactory(
    () => CommonBloc(
      getDayPosition: sl(),
      getSubjectPosition: sl(),
      dayPositionList: [],
      subjectPositionList: [],
    ),
  );

  // Use cases
  sl.registerLazySingleton(
    () => GetDayPositionList(
      dayPositionRepository: sl(),
    ),
  );
  sl.registerLazySingleton(
    () => GetSubjectPositionList(
      subjectPositionRepository: sl(),
    ),
  );

  // Repository
  sl.registerLazySingleton<DayPositionRepository>(
    () => DayPositionRepositoryImpl(
      remoteDataSource: sl(),
      networkInfo: sl(),
    ),
  );
  sl.registerLazySingleton<SubjectPositionRepository>(
    () => SubjectPositionRepositoryImpl(
      remoteDataSource: sl(),
      networkInfo: sl(),
    ),
  );

  //! Data sources

  sl.registerLazySingleton<DayPositionRemoteDataSource>(
    () => DayPositionRemoteDataSourceImpl(
      client: sl(),
    ),
  );
  sl.registerLazySingleton<SubjectPositionRemoteDataSource>(
    () => SubjectPositionRemoteDataSourceImpl(
      client: sl(),
    ),
  );

  //! Groupselection
  // Bloc
  sl.registerFactory(
    () => GroupSelectorBloc(
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

  //! Auth
  // Bloc

  sl.registerFactory(
    () => ScheduleBloc(
        getSchedule: sl(),
        getWeekType: sl(),
        getDisciplineList: sl(),
        getTeacherList: sl()),
  );

  // Use cases
  sl.registerLazySingleton(
    () => GetSchedule(scheduleRepository: sl()),
  );
  sl.registerLazySingleton(
    () => GetWeekType(weekTypeRepository: sl()),
  );
  sl.registerLazySingleton(
    () => GetDisciplineList(disciplineRepository: sl()),
  );
  sl.registerLazySingleton(
    () => GetTeacherList(teacherRepository: sl()),
  );

  // Repository
  sl.registerLazySingleton<ScheduleRepository>(
    () => ScheduleRepositoryImpl(
      remoteDataSource: sl(),
      networkInfo: sl(),
    ),
  );

  sl.registerLazySingleton<WeekTypeRepository>(
    () => WeekTypeRepositoryImpl(
      remoteDataSource: sl(),
      networkInfo: sl(),
    ),
  );

  sl.registerLazySingleton<DisciplineRepository>(
    () => DisciplineRepositoryImpl(
      remoteDataSource: sl(),
      networkInfo: sl(),
    ),
  );

  sl.registerLazySingleton<TeacherRepository>(
    () => TeacherRepositoryImpl(
      remoteDataSource: sl(),
      networkInfo: sl(),
    ),
  );

  //! Data sources

  sl.registerLazySingleton<ScheduleRemoteDataSource>(
    () => ScheduleRemoteDataSourceImpl(
      client: sl(),
    ),
  );

  sl.registerLazySingleton<WeekTypeRemoteDataSource>(
    () => WeekTypeRemoteDataSourceImpl(
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
