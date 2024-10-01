import 'package:carousel_slider/carousel_slider.dart';
import'package:flutter/material.dart';
import 'package:miniproject/database.dart';
import 'package:miniproject/gpage.dart';

class GroceryExamples extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final List<String> imageUrls=[

      "assets/images/gro.jpeg",
      "assets/images/gro2.jpeg",
      "assets/images/gro3.jpeg",
      "assets/images/gro4.jpeg",
    ];
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 168, 193),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 45,
                      width: 250,
                      
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,),
                     child: Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Row(
                        children: [
                          Icon(Icons.search,color: Colors.grey),
                           Text("Grocery",style: TextStyle(color: Colors.grey),),
                        ],
                       ),
                     ),
                      ),
                  ],
                ),
                Spacer(),
                Icon(Icons.favorite,color: Colors.red,size: 30,),
                Spacer(),
                Icon(Icons.shopping_cart,color: const Color.fromARGB(255, 222, 79, 247),size: 30,),
            
              ]
                  ),
          ),
           
           SizedBox(height: 10,),
          CarouselSlider( options: CarouselOptions(
            height: 200,
            autoPlay: true,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            viewportFraction: 0.8,
          ),
      
          items: imageUrls.map((imageUrl){
       return Container(
          height: 200,
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 0.5),
          decoration: BoxDecoration(
            color: Colors.yellow,
          ),
          child: Image.asset(imageUrl,
          fit: BoxFit.cover,),
        );
      
          }).toList(),
          ),
      
        SizedBox(height: 10),
        Row( 
                
          children: [
        
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40,
                width: 90,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                  Text("sort",style: TextStyle(fontSize: 15),),
                  Icon(Icons.arrow_drop_down),
                    ],
                  ),
                ),
              ),
            ),
        
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Container(
                height: 40,
                width: 90,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text("Category",style: TextStyle(fontSize: 11),),
                      Icon(Icons.arrow_drop_down),
                    ],
                  ),
                ),
                               ),
             ),
        
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Container(
                height: 40,
                width: 90,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text("Price",style: TextStyle(fontSize: 15),),
                      Icon(Icons.arrow_drop_down_sharp),
                    ],
                  ),
                ),
                               ),
             ),
        
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Container(
                height: 40,
                width: 90,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text("Filters",style: TextStyle(fontSize: 15),),
                      Icon(Icons.arrow_drop_down),
                    ],
                  ),
                ),
                
             ),
             ),
          ],
        ),
       
      SizedBox(height: 15),
      Expanded(
        child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2), 
          itemCount: 6,
          itemBuilder: (context,index){
          return Container(
          height: 500,
          width: 500,
          decoration: BoxDecoration(border: Border.all(color: const Color.fromARGB(255, 204, 203, 203)),color: Colors.white),
           child:Column(
             mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> GpageExample(imagePath: Database.myList[index]["image"],
                  name:Database.myList[index]["name"],
                  price:Database.myList[index]["price"],
                  )));
                },
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(Database.myList[index]["image"])),
                    
                 ),
                 height: 118,
                 width: double.infinity,
                ),
              ),
              SizedBox(height: 10,),
               Text(Database.myList[index]["name"],style: TextStyle(fontSize: 14),),

               
            Container(
              height: 20,
              width: 130,
              child: Text("1st order discount",style: TextStyle(fontSize: 13),),
              color: const Color.fromARGB(255, 153, 244, 218),
             ),

            Text(Database.myList[index]["text2"],style: TextStyle(fontSize: 13),),

               Row(
                    children: [
                      Icon(Icons.currency_rupee,size: 14,),
                      Text(Database.myList[index]["price"],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                      
                      Text(Database.myList[index]["price1"],style: TextStyle(color: Colors.grey,fontSize: 14,decoration: TextDecoration.lineThrough),),
                     Text(Database.myList[index]["percentage"],style: TextStyle(fontSize: 14),)
                     ,Icon(Icons.percent,size: 10,),
                     Text(Database.myList[index]["text"],style: TextStyle(fontSize: 14),),
                     Spacer(),
                     CircleAvatar(radius: 12,
                     child: Icon(Icons.favorite,color: Colors.red,size: 20,),),
                    
                    ],
                  ),
                



             ],
           ),
                         );
      }
        ),
      ),
      ]),
    );
  }
}