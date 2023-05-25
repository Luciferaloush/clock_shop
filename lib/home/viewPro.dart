import 'package:clock_shop/const/constColor.dart';
import 'package:clock_shop/const/constTitle.dart';
import 'package:clock_shop/home/widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class View extends StatelessWidget {
  const View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: a66,
        appBar: AppBar(
          backgroundColor: a66,

          leading: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Home(),));
            },
            icon: Icon(Icons.arrow_back),
          ),
        ),
    body: ListView(
      shrinkWrap: true,
      children: [
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text("HILFIGER",style: TextStyle(color: fff,fontSize: 20),),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text("SILICONE",style: TextStyle(color: fff,fontSize: 20),),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(" ROSE GOLD",style: TextStyle(color: fff,fontSize: 20),),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text("2 YEARS",style: TextStyle(color: fff,fontSize: 20),),
                    ),
                    SizedBox(height: 20,),
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height/2,
                  width: MediaQuery.of(context).size.width/2,
                  decoration: BoxDecoration(
                    color: ffd,
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Image.asset("asset/clock.png",),
                  ),
                )
              ],
            ),
            SizedBox(height: 40.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text("TRENDING PRODUCTS",style: TextStyle(fontSize: 10,color: fff),),

                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(decker,style: TextStyle(fontSize: 20,color: fff),),

                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Text("PRICES",style: TextStyle(fontSize: 10,color: fff),),

                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Text("100 dollars",style: TextStyle(fontSize: 20,color: fff),),

                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                decoration: BoxDecoration(
                  color: d7,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: InkWell(
                    onTap: (){},
                    child: Text(
                      "ADD TO CART"
                          ,style:  TextStyle(color: fff,fontSize: 15),
                    ),
                  ),
                ),
              ),
            )
          ],
        )
      ],
    ),

    );
  }
}
