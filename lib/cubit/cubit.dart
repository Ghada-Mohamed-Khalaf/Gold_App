
import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gold_app/cubit/states.dart';
import 'package:gold_app/dio_helper.dart';

class MainCubit extends Cubit<States>{
  MainCubit():super(InitState());
  static MainCubit get ({required BuildContext context}) => BlocProvider.of(context);
  double? goldD;
  int?   goldI;

  double? silverD;
  int?   silverI;

  getGoldPrice()async{
  final value =await   DioHelper.getData('XAU/USD/');
      goldD =value.data['price'];
      goldI=goldD!.round();
  print(goldI);
  emit(GetGoldPriceState());

  }
  getSilverPrice()async{
  final value = await  DioHelper.getData('XAG/USD/');
  silverD =value.data['price'];
  silverI=silverD!.round();
  print(silverI);
  emit(GetSilverPriceState());


  }

}
