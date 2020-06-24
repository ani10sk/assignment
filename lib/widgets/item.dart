import 'package:flutter/material.dart';

class Items extends StatelessWidget{
  final height;
  final width;
  final Color color;
  Items(this.height,this.width,this.color);
  @override
  Widget build(BuildContext context){
    return Padding(
      padding:EdgeInsets.all(8),
      child: 
            ListTile(
              //The items are displayed here
              title:Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children:[
                  Column(
                    crossAxisAlignment:CrossAxisAlignment.start,
                  children:[
                    Text('Yes Bank',style:TextStyle(fontSize:20,fontWeight:FontWeight.bold),),
                    Text('BSE',style:TextStyle(color:Colors.black45))
                  ] 
                  ),
                  Column(
                    crossAxisAlignment:CrossAxisAlignment.end,
                    children:[
                    Text('51.40',style:TextStyle(fontSize:20,fontWeight:FontWeight.bold),),
                    Row(
                      children:[
                        Icon(Icons.arrow_drop_up,color:color),
                        Text('75.60(0.65%)',style:TextStyle(color:color))
                      ]
                    )
                  ] 
                  )
                ] 
              ),
            ),
      );
  }
}