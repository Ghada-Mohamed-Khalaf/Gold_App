import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gold_app/cubit/states.dart';

class MainCubit extends Cubit<States>{
  MainCubit():super(InitState());
  static MainCubit get (BuildContext  context){
    return BlocProvider.of(context);
  }

}
