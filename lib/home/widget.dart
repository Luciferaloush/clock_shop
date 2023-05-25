import 'package:clock_shop/const/constColor.dart';
import 'package:clock_shop/const/constTitle.dart';
import 'package:clock_shop/home/viewPro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> _list = [
"asset/clock.png",
    "asset/clock.png",

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: a66,
      appBar: AppBar(
        backgroundColor: a66,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart_outlined),
          ),
        ],
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu_outlined),
        ),
      ),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(), // new
        child: ListView(
          shrinkWrap: true,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0, left: 20),
                      child: Text(
                        feat,
                        style: TextStyle(color: fff, fontSize: 10),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(pro,style: TextStyle(color: fff, fontSize: 20),
                      ),

                    ),
                    Row(
                      children: [
                        Icon(Icons.arrow_back_ios_new_outlined),
                        Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: Icon(Icons.arrow_forward_ios_rounded),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
                   height: 200,
                   decoration: BoxDecoration(
                     color: ffd,
                     borderRadius: BorderRadius.circular(20)

                   ),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Column(
                         children: [
                           Padding(
                             padding: const EdgeInsets.all(40.0),
                             child: Text(titlePro,style: TextStyle(color:a66,fontSize: 20.0 ),),
                           ),
                           Container(
                             width: 100,
                             height: 30,
                             decoration: BoxDecoration(
                               color: fff,
                               borderRadius: BorderRadius.circular(10),
                             ),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                               children: [
                                 Text(see,style: TextStyle(color: a66),),
                                 Icon(Icons.arrow_right_alt,size: 20,color: a66,)
                               ],
                             ),
                           )
                         ],
                       ),
                       Image.asset("asset/clock.png",width: 150,)
                     ],
                   ),
                 ),
               ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(pro,style: TextStyle(color: fff, fontSize: 20),
                      ),

                    ),
                    Row(
                      children: [
                        Icon(Icons.arrow_back_ios_new_outlined),
                        Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: Icon(Icons.arrow_forward_ios_rounded),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 20,),
                GridView.builder(
                  shrinkWrap: true,
                  physics: const AlwaysScrollableScrollPhysics(), // new

                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                       crossAxisCount: 2,
                       crossAxisSpacing: 4.0,
                       mainAxisSpacing: 4.0,
                     childAspectRatio: 1/2
                   ),
                  itemCount:  _list.length,
                  itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 8.0,bottom: 20,right: 8.0,left: 8.0),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => View(),));
                      },
                      child: Container(

                        decoration: BoxDecoration(
                          color: ffd,
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Stack(
                          children:[
                           Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(_list[index]),
                              SizedBox(height: 20,),
                              Text(grant,style: TextStyle(
                                color: fff,fontSize: 15
                              ),)

                            ],
                          ),
                            Container(
                              child: Positioned(
                                right: 0,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.5),
                                      borderRadius: BorderRadius.circular(10)
                                    ),

                                  ),
                                ),
                              ),
                            )
                       ] )
                      ),
                    ),
                  );
                },),



              ],
            ),

          ],
        ),
      ),
    );
  }
}
