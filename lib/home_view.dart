import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gold_app/cubit/cubit.dart';
import 'package:gold_app/cubit/states.dart';
import 'package:gold_app/dio_helper.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainCubit , States>(
      builder: (context , state){
        return Scaffold(
          backgroundColor: Colors.grey[600],
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Center(
              child: RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: "TODAY",
                      style: TextStyle(color: Colors.white),
                    ),
                    TextSpan(
                      text: "GOLD",
                      style: TextStyle(color: Colors.orangeAccent),
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: Container(
            padding: EdgeInsets.only(top: 50, right: 10, left: 10),

            color: Colors.black,
            margin: EdgeInsets.all(10),
            // color: Colors.black,
            child: Row(
              children: [
                Column(
                  children: [
                    Image.asset(
                      "assets/images/gold.png",
                      width: MediaQuery.of(context).size.width / 2.5,
                      height: MediaQuery.of(context).size.height / 7,
                    ),
                    Text(
                      "GOLD",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 33,
                          //MediaQuery.of(context).size.width,
                          color: Colors.orangeAccent,
                          shadows: [
                            BoxShadow(
                              color: Colors.yellow,
                              offset: Offset(1, 2),
                            ),
                          ]),
                    ),
                    Text(
                      "   ${MainCubit.get(context:context).goldI}💲",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          //MediaQuery.of(context).size.width,
                          color: Colors.orangeAccent,
                          shadows: [
                            BoxShadow(
                              color: Colors.yellow,
                              offset: Offset(1, 2),
                            ),
                          ]),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/silver.png",
                      width: MediaQuery.of(context).size.width / 2.5,
                      height: MediaQuery.of(context).size.height / 7,
                    ),
                    Text(
                      "SILVER",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 33,
                          //MediaQuery.of(context).size.width,
                          color: Colors.white,
                          shadows: [
                            BoxShadow(
                              color: Colors.yellow,
                              offset: Offset(1, 2),
                            ),
                          ]),
                    ),
                    Text(
                      "  ${MainCubit.get(context:context).silverI}💲",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          //MediaQuery.of(context).size.width,
                          color: Colors.orangeAccent,
                          shadows: [
                            BoxShadow(
                              color: Colors.yellow,
                              offset: Offset(1, 2),
                            ),
                          ]),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
