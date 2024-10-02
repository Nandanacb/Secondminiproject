import'package:flutter/material.dart';
import 'package:miniproject/addtocart.dart';
import 'package:miniproject/database.dart';

class GpageExample extends StatelessWidget{
  final String imagePath;
  final String name;
  final String price;
  GpageExample({
  required this.imagePath,required this.name,required this.price
});



  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 168, 193),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
               Padding(
                 padding: const EdgeInsets.all(18),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap:(){
                 Navigator.pop(context);
                } ,
                child: Icon(Icons.arrow_back_ios,size: 30,)),
                    Spacer(),
                     Icon(Icons.search,color: Colors.blue,size: 35,),
                      Icon(Icons.favorite,color: Colors.red,size: 35,),
                       Icon(Icons.shopping_cart,color: Colors.purple,size: 35,),
                  ],
                 ),
               ),


        Padding(
          padding: const EdgeInsets.all(7),
          child: Row(
            children: [
              Icon(Icons.pin_drop_rounded,color: const Color.fromARGB(255, 68, 163, 241),),
              Text("  Add delivery location to get extra discount",style: TextStyle(fontSize: 15),),
              Icon(Icons.keyboard_double_arrow_right),
              ],
          ),
        ),

        Container(
          height: 380,
          width: double.infinity,
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage(imagePath),fit: BoxFit.cover)),
        ),


        Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              Text(name,
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              Spacer(),
              Icon(Icons.favorite,color: Colors.red,),
              Icon(Icons.share,),
            ],
          ),
          
        ),
           
         Text("We are a leading exporter of grocery.We have a wide range of customers worldwide and offer affordable, bulk",
         
         style: TextStyle(fontSize: 20),
         maxLines: 2,
         overflow: TextOverflow.ellipsis,),


           Padding(
             padding: const EdgeInsets.all(10),
             child: Row(
                      children: [
                        Icon(Icons.currency_rupee,size: 15,),
                        Text(price
                        ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
                        
                        Text(" 210",style: TextStyle(color: Colors.grey,fontSize: 19,decoration: TextDecoration.lineThrough),),
                       Text(" 20",style: TextStyle(fontSize: 19),)
                       ,Icon(Icons.percent,size: 8,),
                       Text(" off",style: TextStyle(fontSize: 19),),
                      
                      ],
                    ),
           ),

             Padding(
               padding: const EdgeInsets.all(10),
               child: Container(
                height: 30,
                width: 130,
                child: Text("1st order discount",style: TextStyle(fontSize: 15),),
                color: const Color.fromARGB(255, 153, 244, 218),
               ),
             ),
             
             

             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text("Free Delivery",
               style: TextStyle(fontSize: 15),),
             ),

             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Row(
                 children: [
                   Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: const Color.fromARGB(255, 97, 244, 165)),
                    height: 30,
                    width: 60,
                    child: Row(
                      children: [
                        Text("  3.8"),
                        Icon(Icons.star,size: 13,color: Colors.white,),
                      ],
                    ),
                   ),
                   
                 ],
               ),
             ),
          SizedBox(height: 30),
         Center(
           child: Container(
            height: 80,
            width: 300,
            
             child: ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>AddtoCartExample(imagePath: imagePath, name: name, price: price)));
             }, child: Text("Add to Cart",style: TextStyle(fontSize: 20),)),
           ),
         )


        ],
      ),

      
    );









    
  }
}