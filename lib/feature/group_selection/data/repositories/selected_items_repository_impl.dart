import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/error/exception.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/feature/group_selection/data/datasources/selected_items_datasource.dart';
import 'package:studenda_mobile_student/feature/group_selection/data/models/course_model.dart';
import 'package:studenda_mobile_student/feature/group_selection/data/models/department_model.dart';
import 'package:studenda_mobile_student/feature/group_selection/data/models/group_model.dart';
import 'package:studenda_mobile_student/feature/group_selection/domain/repositories/selected_items_repository.dart';

class SelectedItemsRepositoryImpl implements SelectedItemsRepository {
  final SelectedItemsDataSource localDataSource;
  SelectedItemsRepositoryImpl({required this.localDataSource});

  @override
  Future<Either<Failure, CourseModel>> getCourse(void request) async {
    try {
      final localLoad = await localDataSource.getCourse();
      return Right(localLoad);
    } on CacheException {
      return const Left(CacheFailure(message: "Ошибка сервера"));
    }
  }

  @override
  Future<Either<Failure, DepartmentModel>> getDepartment(void request) async {
    try {
      final localLoad = await localDataSource.getDepartment();
      return Right(localLoad);
    } on CacheException {
      return const Left(CacheFailure(message: "Ошибка сервера"));
    }
  }

  @override
  Future<Either<Failure, GroupModel>> getGroup(void request) async {
    try {
      final localLoad = await localDataSource.getGroup();
      return Right(localLoad);
    } on CacheException {
      return const Left(CacheFailure(message: "Ошибка сервера"));
    }
  }

  @override
  Future<Either<Failure, void>> setCourse(CourseModel request) async {
    try {
      final localLoad = await localDataSource.setCourse(request);
      return Right(localLoad);
    } on CacheException {
      return const Left(CacheFailure(message: "Ошибка сервера"));
    }
  }

  @override
  Future<Either<Failure, void>> setDepartment(DepartmentModel request) async {
    try {
      final localLoad = await localDataSource.setDepartment(request);
      return Right(localLoad);
    } on CacheException {
      return const Left(CacheFailure(message: "Ошибка сервера"));
    }
  }

  @override
  Future<Either<Failure, void>> setGroup(GroupModel request) async {
    try {
      final localLoad = await localDataSource.setGroup(request);
      return Right(localLoad);
    } on CacheException {
      return const Left(CacheFailure(message: "Ошибка сервера"));
    }
  }
}
