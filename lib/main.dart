import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gold_app/cubit/cubit.dart';
import 'package:gold_app/dio_helper.dart';
import 'package:gold_app/home_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  runApp(
      MultiBlocProvider(
    providers: [
      BlocProvider<MainCubit>(
      create: (BuildContext context) => MainCubit()..getSilverPrice()..getGoldPrice(),
  )
    ],
      child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
