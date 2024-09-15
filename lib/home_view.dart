import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],


      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(child: Text("TODAY PRICE",style: TextStyle(color: Colors.white),)),
      ),
      body:Container(

        padding: EdgeInsets.all(16),

        color: Colors.black,
        margin: EdgeInsets.all(10),
       // color: Colors.black,
        child: Row(
          children: [Column(
            children: [
              Image.asset("assets/images/gold.png",width: MediaQuery.of(context).size.width/2.5,
      height: MediaQuery.of(context).size.height/7,),

              Text("GOLD",style: TextStyle(fontWeight: FontWeight.bold,fontSize:33,
              //MediaQuery.of(context).size.width,
                  color: Colors.orangeAccent,shadows:[
                BoxShadow(
                  color: Colors.yellow,
                  offset: Offset(1 , 2),
                ),

              ] ),),
              Text("1800💲",style: TextStyle(fontWeight: FontWeight.bold,fontSize:25,
                  //MediaQuery.of(context).size.width,
                  color: Colors.orangeAccent,shadows:[
                    BoxShadow(
                      color: Colors.yellow,
                      offset: Offset(1 , 2),
                    ),

                  ] ),),

            ],

          ),
            SizedBox(width: 10,),
            Column(
              children: [
                Image.asset("assets/images/silver.png",width: MediaQuery.of(context).size.width/2.5,
                  height: MediaQuery.of(context).size.height/7,),

                Text("SILVER",style: TextStyle(fontWeight: FontWeight.bold,fontSize:33,
                    //MediaQuery.of(context).size.width,
                    color: Colors.white,shadows:[
                      BoxShadow(
                        color: Colors.yellow,
                        offset: Offset(1 , 2),
                      ),

                    ] ),),
                Text("1800💲",style: TextStyle(fontWeight: FontWeight.bold,fontSize:25,
                    //MediaQuery.of(context).size.width,
                    color: Colors.orangeAccent,shadows:[
                      BoxShadow(
                        color: Colors.yellow,
                        offset: Offset(1 , 2),
                      ),

                    ] ),),

              ],

            ),

          ],
        ),
      ) ,
    );

  }
}
