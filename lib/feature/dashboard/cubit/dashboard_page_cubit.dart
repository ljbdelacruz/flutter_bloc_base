import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_page_state.dart';
part 'dashboard_page_cubit.freezed.dart';

class DashboardPageCubit extends Cubit<DashboardPageState> {
  DashboardPageCubit() : super(DashboardPageState.initial());
}
