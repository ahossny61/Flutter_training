import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:train_step3/modules/counter_screen/cubits/states.dart';
class CounterCubit extends Cubit<CounterStates>{
  CounterCubit() : super(CounterInitState());

  int counter=1;
  static CounterCubit getObject(context)=>BlocProvider.of(context);
  void Minus(){
    counter--;
    emit(CounterMinusState());
  }
  void Add(){
    counter++;
    emit(CounterAddState());
  }
}