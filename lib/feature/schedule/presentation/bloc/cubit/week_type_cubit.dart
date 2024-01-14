import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:studenda_mobile/feature/schedule/domain/entities/week_type_entity.dart';
import 'package:studenda_mobile/feature/schedule/domain/usecases/get_week_type.dart';

part 'week_type_state.dart';
part 'week_type_cubit.freezed.dart';

class WeekTypeCubit extends Cubit<WeekTypeState> {
  
  final GetWeekType getWeekType;

  WeekTypeCubit(this.getWeekType) : super(const WeekTypeState.initial());

  Future<void> load() async {
    emit(const WeekTypeState.loading());
    final weekType = await getWeekType(() {});
    weekType.fold(
      (l) => emit(WeekTypeState.fail(l.message)),
      (r) => emit(
        WeekTypeState.success(WeekTypeEntity(id: r.id, name: r.name)),
      ),
    );
  }


}
