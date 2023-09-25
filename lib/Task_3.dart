
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;
import 'package:project01/products.dart';




class ListScreen extends StatefulWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {




  Future<List<ProductData>> getData() async{

    final res = await http.get(Uri.parse('https://dummyjson.com/products'));

    List<ProductData> dataA =[];

    if (res.statusCode == 200 ){

      Map<String , dynamic> resData =jsonDecode(res.body);

      for(var item in resData['products']){
        dataA.add(ProductData.fromJson(item));

      }

    }

    return dataA;

  }


  // the list
  List<ProductData> myList = [];
  bool isLoading = true ;

  @override
  void initState() {

    super.initState();
    Future.delayed(
        Duration.zero,
            () async {
          var data = await getData();
          setState(() {

            myList = data ;
            isLoading = false ;
          });


        }

    );

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('New Product'),
        leading: SvgPicture.asset('images/Back.svg' ),

        //actions: [ SvgPicture.asset('images/ICON.svg',) ],


        leadingWidth: 30,

        centerTitle: true,

      ),
      body: isLoading ?
      const Center(
        child: CircularProgressIndicator(),

      )
          : SafeArea(
        child: GridView.builder(



          itemCount: myList.length,
          itemBuilder: (context, index) {
            return Container(
              height: MediaQuery.of(context).size.height * 2.0,
              width: MediaQuery.of(context).size.width * 0.4,
              decoration:  BoxDecoration(
                color: const Color(0x000fffff),
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: Image.network(
                      myList[index].image,

                      //width: MediaQuery.of(context).size.height * 2.0,
                      //height:MediaQuery.of(context).size.width * 0.4,)
                    ).image
                ),
              ),
              alignment: Alignment.bottomCenter,





              margin: EdgeInsets.all(10),

              child:  Container(

                height: 40,
                width: double.infinity,

                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),



                  ),
                  color: Colors.deepPurple,

                ),

                  child: Column(

                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [


                      Expanded(

                          flex: 1,
                          child: Text(myList[index].name,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,


                            ),


                          )),

                      Expanded(
                          flex: 1,
                          child: Text(
                            '${myList[index].price.toString()} \$',
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,

                            ),
                          )
                      ),


                    ],


                  ),
                ),



            );
          },
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,


          ),

        ),
      ),
    );


  }


}

class product extends StatefulWidget {
  final String name;
  final String detail;
  final String image;
  final String price;

  const product({super.key ,
    required this.name,
    required this.detail,
    required this.image,
    required this.price,

  });

  @override
  State<product> createState() => _productState();
}

class _productState extends State<product> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}





/*



Scaffold(
        appBar: AppBar(
          title: const Text('list Screen'),

        ),
        body: isLoading ?
        const Center(
          child: CircularProgressIndicator(),

        )
            :
        GridView.builder(

          itemCount: myList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)


                ),


                tileColor: Colors.teal,
               // contentPadding: EdgeInsets.all(20),

                leading: Text(

                  myList[index].price.toString(),
                ),

                title: Text(

                  myList[index].name,
                ),
                subtitle: Text(

                  myList[index].detail,
                ),


              ),
            );




          }, gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          //crossAxisSpacing: 20,
          //mainAxisSpacing: 20,

        ),


        )

    );















ListView.builder(

          itemCount: myList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)


                ),


                tileColor: Colors.teal,
               // contentPadding: EdgeInsets.all(20),

                leading: Text(

                  myList[index].price.toString(),
                ),

                title: Text(

                  myList[index].name,
                ),
                subtitle: Text(

                  myList[index].detail,
                ),


              ),
            );




          },
















        )*/





