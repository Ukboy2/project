import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class uk extends StatelessWidget {
  const uk({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Column(
          children: [
            fatix(IMG: 'images/shwarma1.png',name: 'Shuwarmaa ',price: 'Price: \$20',status: 'Status: Avalilble',),
            SizedBox(height: 20,),
            fatix(IMG: 'images/shawarma2.jpg',name: 'Shuwarma with eegs',price: 'Price: \$35',status: 'Status: Avalilble'),
            SizedBox(height: 20,),
            fatix(IMG: 'images/shawarma3.jpg',name: 'Shuwarma with chicken',price: 'Price: \$50',status: 'Status: Avalilble')
          ],
        )
        ),
    );
  }
}

class fatix extends StatelessWidget {
  const fatix({
    Key? key, required this.IMG, required this.name, required this.price, required this.status,
  }) : super(key: key);
final String IMG;
final String name;
final String price;
final String status;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          height: 130,
          width: double.infinity,
          margin: EdgeInsets.only(top: 20,left: 20,right: 20),
          padding: EdgeInsets.only(left: 20,bottom: 10,top: 10),
          decoration: BoxDecoration(
            color: Colors.white
          ),
          child: Row(
            children: [
              ClipOval(child: Image.asset(IMG,height: 100,width: 100,fit: BoxFit.cover,)),
              Container(margin: EdgeInsets.only(left: 20), 
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),),
                  SizedBox(height: 5,),
                  Text(price,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.grey.shade500),),
                  SizedBox(height: 5,),
                  Text(status,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color: Colors.grey.shade500),),
                ],
              ))
            ],
          ),

        ),
      ),
    );
  }
}