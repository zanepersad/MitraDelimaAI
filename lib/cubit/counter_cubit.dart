import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit({this.initialData = 0}) : super(initialData);
  int initialData;
  void tambahData() {
    emit(state + 1);
  }

  void kurangiData() {
    emit(state - 1);
  }

  void resetData() {
    emit(0);
  }
}   
