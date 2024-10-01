import'package:flutter/material.dart';

class AddtoCartExample extends StatelessWidget{
  
   late String imagePath;
  late String name;
  late  String price;
  AddtoCartExample({
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
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                GestureDetector(
                  onTap:(){
                     Navigator.pop(context);
                  },
                   child:Icon(Icons.arrow_back_ios,size: 30,)),
                Text("Cart",style: TextStyle(fontSize: 26),)
              ],
            ),
          ),
         SizedBox(height: 20,),
        Expanded(
          child: ListView.builder(itemCount:1, itemBuilder:(context, index){
            return Container(
              height: 80,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                children: [
                  Container(
                    height:70,
                    width: 80,
                    child:  Image(image: AssetImage(imagePath))),
                    Spacer(),
                  Text(name,
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  Spacer(),
                  Text(price,
                  style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                  Spacer(),
                  Container(
                    height: 20,
                    width: 20,
                    child: Text("+"),
                    decoration: BoxDecoration(border: Border.all(color: Colors.red),)
                  ),
                ],
              ),
            );
          } ,),
        )


        ],
      ),
    );
  }
}