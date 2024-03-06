import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:studenda_mobile_student/core/network/network_info.dart';
import 'package:studenda_mobile_student/feature/auth/data/datasources/auth_local_data_source.dart';
import 'package:studenda_mobile_student/feature/auth/data/datasources/auth_remote_data_source.dart';
import 'package:studenda_mobile_student/feature/auth/data/models/user_model/user_model.dart';
import 'package:studenda_mobile_student/feature/auth/data/repositories/auth_repository_impl.dart';
import 'package:studenda_mobile_student/feature/auth/domain/repositories/auth_repository.dart';
import 'package:studenda_mobile_student/feature/auth/domain/usecases/auth.dart';
import 'package:studenda_mobile_student/feature/auth/domain/usecases/get_token.dart';
import 'package:studenda_mobile_student/feature/auth/domain/usecases/logout.dart';
import 'package:studenda_mobile_student/feature/auth/presentation/bloc/bloc/auth_bloc.dart';
import 'package:studenda_mobile_student/feature/auth/presentation/bloc/cubit/token_cubit.dart';
import 'package:studenda_mobile_student/feature/group_selection/data/datasources/course_local_data_source.dart';
import 'package:studenda_mobile_student/feature/group_selection/data/datasources/course_remote_data_source.dart';
import 'package:studenda_mobile_student/feature/group_selection/data/datasources/department_local_data_source.dart';
import 'package:studenda_mobile_student/feature/group_selection/data/datasources/department_remote_data_source.dart';
import 'package:studenda_mobile_student/feature/group_selection/data/datasources/group_local_data_source.dart';
import 'package:studenda_mobile_student/feature/group_selection/data/datasources/group_remote_data_source.dart';
import 'package:studenda_mobile_student/feature/group_selection/data/datasources/selected_items_datasource.dart';
import 'package:studenda_mobile_student/feature/group_selection/data/models/course_model.dart';
import 'package:studenda_mobile_student/feature/group_selection/data/models/department_model.dart';
import 'package:studenda_mobile_student/feature/group_selection/data/models/group_model.dart';
import 'package:studenda_mobile_student/feature/group_selection/data/repositories/course_repository_impl.dart';
import 'package:studenda_mobile_student/feature/group_selection/data/repositories/department_repository_impl.dart';
import 'package:studenda_mobile_student/feature/group_selection/data/repositories/group_repository_impl.dart';
import 'package:studenda_mobile_student/feature/group_selection/data/repositories/selected_items_repository_impl.dart';
import 'package:studenda_mobile_student/feature/group_selection/domain/entities/course_entity.dart';
import 'package:studenda_mobile_student/feature/group_selection/domain/entities/department_entity.dart';
import 'package:studenda_mobile_student/feature/group_selection/domain/entities/group_entity.dart';
import 'package:studenda_mobile_student/feature/group_selection/domain/repositories/course_repository.dart';
import 'package:studenda_mobile_student/feature/group_selection/domain/repositories/department_repository.dart';
import 'package:studenda_mobile_student/feature/group_selection/domain/repositories/groups_repository.dart';
import 'package:studenda_mobile_student/feature/group_selection/domain/repositories/selected_items_repository.dart';
import 'package:studenda_mobile_student/feature/group_selection/domain/usecases/load_courses.dart';
import 'package:studenda_mobile_student/feature/group_selection/domain/usecases/load_departments.dart';
import 'package:studenda_mobile_student/feature/group_selection/domain/usecases/load_groups.dart';
import 'package:studenda_mobile_student/feature/group_selection/domain/usecases/selected_items/get_selected_course.dart';
import 'package:studenda_mobile_student/feature/group_selection/domain/usecases/selected_items/get_selected_department.dart';
import 'package:studenda_mobile_student/feature/group_selection/domain/usecases/selected_items/get_selected_group.dart';
import 'package:studenda_mobile_student/feature/group_selection/domain/usecases/selected_items/set_selected_course.dart';
import 'package:studenda_mobile_student/feature/group_selection/domain/usecases/selected_items/set_selected_department.dart';
import 'package:studenda_mobile_student/feature/group_selection/domain/usecases/selected_items/set_selected_group.dart';
import 'package:studenda_mobile_student/feature/group_selection/presentation/bloc/course_cubit/course_cubit.dart';
import 'package:studenda_mobile_student/feature/group_selection/presentation/bloc/department_cubit/department_cubit.dart';
import 'package:studenda_mobile_student/feature/group_selection/presentation/bloc/group_cubit/group_cubit.dart';
import 'package:studenda_mobile_student/feature/group_selection/presentation/bloc/main_group_selection_bloc/main_group_selector_bloc.dart';
import 'package:studenda_mobile_student/feature/schedule/data/datasources/local/day_position_local_data_source.dart';
import 'package:studenda_mobile_student/feature/schedule/data/datasources/local/discipline_local_data_source.dart';
import 'package:studenda_mobile_student/feature/schedule/data/datasources/local/schedule_local_data_source.dart';
import 'package:studenda_mobile_student/feature/schedule/data/datasources/local/subject_position_local_data_source.dart';
import 'package:studenda_mobile_student/feature/schedule/data/datasources/local/subject_type_local_data_source.dart';
import 'package:studenda_mobile_student/feature/schedule/data/datasources/local/teacher_local_data_source.dart';
import 'package:studenda_mobile_student/feature/schedule/data/datasources/local/week_type_local_data_source.dart';
import 'package:studenda_mobile_student/feature/schedule/data/datasources/remote/day_position_remote_data_source.dart';
import 'package:studenda_mobile_student/feature/schedule/data/datasources/remote/discipline_remote_data_source.dart';
import 'package:studenda_mobile_student/feature/schedule/data/datasources/remote/schedule_remote_data_source.dart';
import 'package:studenda_mobile_student/feature/schedule/data/datasources/remote/subject_position_remote_data_source.dart';
import 'package:studenda_mobile_student/feature/schedule/data/datasources/remote/subject_type_remote_data_source.dart';
import 'package:studenda_mobile_student/feature/schedule/data/datasources/remote/teacher_remote_data_source.dart';
import 'package:studenda_mobile_student/feature/schedule/data/datasources/remote/week_type_remote_data_source.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/day_position_model.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/discipline_model.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/subject_model.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/subject_position_model.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/subject_type_model.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/week_type_model.dart';
import 'package:studenda_mobile_student/feature/schedule/data/repositories/day_position_repository_impl.dart';
import 'package:studenda_mobile_student/feature/schedule/data/repositories/discipline_repository_impl.dart';
import 'package:studenda_mobile_student/feature/schedule/data/repositories/schedule_repository_impl.dart';
import 'package:studenda_mobile_student/feature/schedule/data/repositories/subject_position_repository_impl.dart';
import 'package:studenda_mobile_student/feature/schedule/data/repositories/subject_type_repository_impl.dart';
import 'package:studenda_mobile_student/feature/schedule/data/repositories/teacher_repository_impl.dart';
import 'package:studenda_mobile_student/feature/schedule/data/repositories/week_type_repository_impl.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/repositories/day_position_repository.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/repositories/discipline_repository.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/repositories/schedule_repository.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/repositories/subject_position_repository.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/repositories/subject_type_repository.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/repositories/teacher_repository.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/repositories/week_type_repository.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/usecases/get_all_week_type.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/usecases/get_current_week_type.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/usecases/get_day_position.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/usecases/get_discipline_list.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/usecases/get_schedule.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/usecases/get_subject_position.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/usecases/get_subject_type_list.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/usecases/get_teacher_list.dart';
import 'package:studenda_mobile_student/feature/schedule/presentation/bloc/schedule_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  const secureStorage = FlutterSecureStorage();
  Hive.registerAdapter(UserModelAdapter());
  Hive.registerAdapter(GroupModelAdapter());
  Hive.registerAdapter(CourseModelAdapter());
  Hive.registerAdapter(DepartmentModelAdapter());
  Hive.registerAdapter(DayPositionModelAdapter());
  Hive.registerAdapter(DisciplineModelAdapter());
  Hive.registerAdapter(SubjectModelAdapter());
  Hive.registerAdapter(SubjectPositionModelAdapter());
  Hive.registerAdapter(SubjectTypeModelAdapter());
  Hive.registerAdapter(WeekTypeModelAdapter());
  final SharedPreferences prefs = await SharedPreferences.getInstance();

  //! Features
  //! Auth
  // Bloc
  sl.registerFactory(
    () => AuthBloc(
      authUseCase: sl(),
    ),
  );

  sl.registerFactory(
    () => TokenCubit(
      getTokenUseCase: sl(),
      logoutUseCase: sl(),
    ),
  );

  // Use cases
  sl.registerLazySingleton(
    () => Auth(
      authRepository: sl(),
    ),
  );
  sl.registerLazySingleton(
    () => GetToken(
      authRepository: sl(),
    ),
  );
  
  sl.registerLazySingleton(
    () => Logout(
      authRepository: sl(),
    ),
  );

  // Repository
  sl.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(
      remoteDataSource: sl(),
      localDataSource: sl(),
      networkInfo: sl(),
    ),
  );

  //! Data sources

  sl.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSource(
      client: sl(),
    ),
  );

  sl.registerLazySingletonAsync<AuthLocalDataSource>(() async {
    return AuthLocalDataSourceImpl(
      tokenStorage: secureStorage,
      userBox: await Hive.openBox<UserModel>('UserBox'),
    );
  });

  await sl.isReady<AuthLocalDataSource>();

  //! Groupselection
  // Bloc
  sl.registerFactory(
    () => MainGroupSelectorBloc(
      getSelectedDepartment: sl(),
      getSelectedCourse: sl(),
      getSelectedGroup: sl(),
      setSelectedDepartment: sl(),
      setSelectedCourse: sl(),
      setSelectedGroup: sl(),
      selectedGroup:
          const GroupEntity(id: -1, name: "", courseId: -1, departmentId: -1),
      selectedCourse: const CourseEntity(id: -1, name: "", grade: 0),
      selectedDepartment: const DepartmentEntity(id: -1, name: ""),
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

  sl.registerLazySingleton(
    () => GetSelectedGroup(
      itemsRepository: sl(),
    ),
  );

  sl.registerLazySingleton(
    () => GetSelectedCourse(
      itemsRepository: sl(),
    ),
  );

  sl.registerLazySingleton(
    () => GetSelectedDepartment(
      itemsRepository: sl(),
    ),
  );

  sl.registerLazySingleton(
    () => SetSelectedGroup(
      itemsRepository: sl(),
    ),
  );

  sl.registerLazySingleton(
    () => SetSelectedCourse(
      itemsRepository: sl(),
    ),
  );

  sl.registerLazySingleton(
    () => SetSelectedDepartment(
      itemsRepository: sl(),
    ),
  );

  // Repository

  sl.registerLazySingleton<SelectedItemsRepository>(
    () => SelectedItemsRepositoryImpl(
      localDataSource: sl(),
    ),
  );

  sl.registerLazySingleton<GroupRepository>(
    () => GroupRepositoryImpl(
      remoteDataSource: sl(),
      localDataSource: sl(),
      networkInfo: sl(),
    ),
  );

  sl.registerLazySingleton<CourseRepository>(
    () => CourseRepositoryImpl(
      remoteDataSource: sl(),
      localDataSource: sl(),
      networkInfo: sl(),
    ),
  );

  sl.registerLazySingleton<DepartmentRepository>(
    () => DepartmentRepositoryImpl(
      remoteDataSource: sl(),
      localDataSource: sl(),
      networkInfo: sl(),
    ),
  );

  //! Data sources

  sl.registerLazySingleton<SelectedItemsDataSource>(
    () => SelectedItemsDataSourceImpl(
      prefs: prefs,
    ),
  );

  sl.registerLazySingleton<GroupRemoteDataSource>(
    () => GroupRemoteDataSource(
      client: sl(),
    ),
  );

  sl.registerLazySingleton<CourseRemoteDataSource>(
    () => CourseRemoteDataSource(
      client: sl(),
    ),
  );

  sl.registerLazySingleton<DepartmentRemoteDataSource>(
    () => DepartmentRemoteDataSource(
      client: sl(),
    ),
  );

  sl.registerLazySingletonAsync<GroupLocalDataSource>(() async {
    return GroupLocalDataSource(
      groupBox: await Hive.openBox<GroupModel>('GroupBox'),
    );
  });

  await sl.isReady<GroupLocalDataSource>();

  sl.registerLazySingletonAsync<CourseLocalDataSource>(() async {
    return CourseLocalDataSource(
      courseBox: await Hive.openBox<CourseModel>('CourseBox'),
    );
  });

  await sl.isReady<CourseLocalDataSource>();

  sl.registerLazySingletonAsync<DepartmentLocalDataSource>(() async {
    return DepartmentLocalDataSource(
      departmentBox: await Hive.openBox<DepartmentModel>('DepartmentBox'),
    );
  });

  await sl.isReady<DepartmentLocalDataSource>();
  //! Auth
  // Bloc

  sl.registerFactory(
    () => ScheduleBloc(
      getSchedule: sl(),
      getCurrentWeekType: sl(),
      getAllWeekType: sl(),
      getDisciplineList: sl(),
      getTeacherList: sl(),
      getDayPosition: sl(),
      getSubjectPosition: sl(),
      getSubjectType: sl(),
    ),
  );
  // Use cases
  sl.registerLazySingleton(
    () => GetSubjectTypeList(
      subjectTypeRepository: sl(),
    ),
  );

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

  sl.registerLazySingleton(
    () => GetScheduleByWeekType(scheduleRepository: sl()),
  );

  sl.registerLazySingleton(
    () => GetCurrentWeekType(weekTypeRepository: sl()),
  );

  sl.registerLazySingleton(
    () => GetAllWeekType(weekTypeRepository: sl()),
  );

  sl.registerLazySingleton(
    () => GetDisciplineList(disciplineRepository: sl()),
  );

  sl.registerLazySingleton(
    () => GetTeacherList(teacherRepository: sl()),
  );

  // Repository
  sl.registerLazySingleton<SubjectTypeRepository>(
    () => SubjectTypeRepositoryImpl(
      remoteDataSource: sl(),
      localDataSource: sl(),
      networkInfo: sl(),
    ),
  );

  sl.registerLazySingleton<DayPositionRepository>(
    () => DayPositionRepositoryImpl(
      remoteDataSource: sl(),
      localDataSource: sl(),
      networkInfo: sl(),
    ),
  );

  sl.registerLazySingleton<SubjectPositionRepository>(
    () => SubjectPositionRepositoryImpl(
      remoteDataSource: sl(),
      localDataSource: sl(),
      networkInfo: sl(),
    ),
  );

  sl.registerLazySingleton<ScheduleByWeekTypeRepository>(
    () => ScheduleRepositoryImpl(
      remoteDataSource: sl(),
      localDataSource: sl(),
      networkInfo: sl(),
    ),
  );

  sl.registerLazySingleton<WeekTypeRepository>(
    () => WeekTypeRepositoryImpl(
      remoteDataSource: sl(),
      localDataSource: sl(),
      networkInfo: sl(),
    ),
  );

  sl.registerLazySingleton<DisciplineRepository>(
    () => DisciplineRepositoryImpl(
      remoteDataSource: sl(),
      localDataSource: sl(),
      networkInfo: sl(),
    ),
  );

  sl.registerLazySingleton<TeacherRepository>(
    () => TeacherRepositoryImpl(
      remoteDataSource: sl(),
      localDataSource: sl(),
      networkInfo: sl(),
    ),
  );

  //! Data sources
  sl.registerLazySingleton<SubjectTypeRemoteDataSource>(
    () => SubjectTypeRemoteDataSource(
      client: sl(),
    ),
  );

  sl.registerLazySingleton<DayPositionRemoteDataSource>(
    () => DayPositionRemoteDataSource(
      client: sl(),
    ),
  );

  sl.registerLazySingleton<SubjectPositionRemoteDataSource>(
    () => SubjectPositionRemoteDataSource(
      client: sl(),
    ),
  );

  sl.registerLazySingleton<ScheduleRemoteDataSource>(
    () => ScheduleRemoteDataSource(
      client: sl(),
    ),
  );

  sl.registerLazySingleton<WeekTypeRemoteDataSource>(
    () => WeekTypeRemoteDataSource(
      client: sl(),
    ),
  );

  sl.registerLazySingleton<DisciplineRemoteDataSource>(
    () => DisciplineRemoteDataSource(
      client: sl(),
    ),
  );

  sl.registerLazySingleton<TeacherRemoteDataSource>(
    () => TeacherRemoteDataSource(
      client: sl(),
    ),
  );

  sl.registerLazySingletonAsync<SubjectTypeLocalDataSource>(
    () async {
      return SubjectTypeLocalDataSource(
        subjectTypeBox: await Hive.openBox<SubjectTypeModel>('SubjectTypeBox'),
      );
    },
  );

  await sl.isReady<SubjectTypeLocalDataSource>();

  sl.registerLazySingletonAsync<DayPositionLocalDataSource>(
    () async {
      return DayPositionLocalDataSource(
        dayPositionBox: await Hive.openBox<DayPositionModel>('DayPositionBox'),
      );
    },
  );

  await sl.isReady<DayPositionLocalDataSource>();

  sl.registerLazySingletonAsync<SubjectPositionLocalDataSource>(
    () async {
      return SubjectPositionLocalDataSource(
        subjectPositionBox:
            await Hive.openBox<SubjectPositionModel>('SubjectPositionBox'),
      );
    },
  );

  await sl.isReady<SubjectPositionLocalDataSource>();

  sl.registerLazySingletonAsync<ScheduleLocalDataSource>(
    () async {
      return ScheduleLocalDataSource(
        subjectBox: await Hive.openBox<SubjectModel>("ScheduleBox"),
      );
    },
  );

  await sl.isReady<ScheduleLocalDataSource>();

  sl.registerLazySingletonAsync<WeekTypeLocalDataSource>(
    () async {
      return WeekTypeLocalDataSource(
        prefs: prefs,
        weekTypeBox: await Hive.openBox<WeekTypeModel>("WeekTypeBox"),
      );
    },
  );

  await sl.isReady<WeekTypeLocalDataSource>();

  sl.registerLazySingletonAsync<DisciplineLocalDataSource>(
    () async {
      return DisciplineLocalDataSource(
        disciplineBox: await Hive.openBox<DisciplineModel>("DisciplineBox"),
      );
    },
  );

  await sl.isReady<DisciplineLocalDataSource>();

  sl.registerLazySingletonAsync<TeacherLocalDataSource>(
    () async {
      return TeacherLocalDataSource(
        userBox: await Hive.openBox<UserModel>("TeacherBox"),
      );
    },
  );

  await sl.isReady<TeacherLocalDataSource>();
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
