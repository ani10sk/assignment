import 'package:flutter/material.dart';
import '../widgets/item.dart';

class AssignScreen extends StatefulWidget{
  @override
  _AssignScreenState createState() => _AssignScreenState();
}

class _AssignScreenState extends State<AssignScreen> {
  var isfavorite=0;
  var status=0;
  @override
  Widget build(BuildContext context){
    final height=MediaQuery.of(context).size.height;
    //Gets the height of screen 
    final width=MediaQuery.of(context).size.width;
    //Gets the width of the Screen
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height:height/20),
            PopupMenuButton(
              //This widget creates popups when it is chosen
              icon:Icon(Icons.more_vert,color:Colors.black,),
              itemBuilder:(_)=>[
                PopupMenuItem(
                  child:Text('All items'),
                  value:0,
                  //value is assigned 0 if this option is chosen
                  ),
                PopupMenuItem(
                  child:Text('Only favorites'),
                  value:1,
                  //value is assigned 1 if this option is chosen
                  ),
              ],
              onSelected:(int value){
                //According to value in the popup new screen will be displayed
              },
              ),
            Container(
              margin:EdgeInsets.fromLTRB(width/17, 5, width/17, 0),
              child:Row(
                children: <Widget>[
                  Column(
                    crossAxisAlignment:CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'YES BANK LTD (YES B)',//Title
                        style:TextStyle(fontSize:15,color:Colors.black45)
                      ),
                      SizedBox(height:height/45),
                      Row(
                        mainAxisAlignment:MainAxisAlignment.start,
                        children:[
                          Text(
                          '\$11661.99',//Total Money
                          style:TextStyle(fontSize:30,fontWeight:FontWeight.bold)
                        ),
                          SizedBox(width:width/2000),
                          Icon(Icons.arrow_drop_up,color:Colors.green,),
                          Column(
                            mainAxisAlignment:MainAxisAlignment.spaceBetween,
                            children:[
                              SizedBox(height:3),
                              Text(
                                '+4.00 (5.28%)', //Total change
                                style:TextStyle(color:Colors.green,fontWeight:FontWeight.bold)
                              ),
                            ] 
                          ),
                        ] 
                      )
                    ],
                  ),
                  Expanded(child:SizedBox()),
                  IconButton(
                    icon:Icon(isfavorite==0?Icons.star_border:Icons.star), 
                    onPressed:(){
                      setState(() {
                        isfavorite==0?isfavorite=1:isfavorite=0;
                      });
                      
                    })
                ],
              ),
            ),
            Container(
              alignment:Alignment.centerRight,
              width:double.infinity,
              height:height/20,
              child:Row(
                mainAxisAlignment:MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    'Components',
                    style:(TextStyle(fontSize:15,color:Colors.black45)),
                  ),
                  IconButton(
                    icon:Icon(status==0?Icons.arrow_drop_up:Icons.arrow_drop_down), 
                    onPressed:(){
                      setState(() {
                        status==0?status=1:status=0;
                      });
                      
                    })
                ],
              )
            ),
            status==0?SizedBox(height:height):
            Column(
              children: <Widget>[
                Items(height,width,Colors.red),
                //Items is a class that gives the item
                Container(margin:EdgeInsets.fromLTRB(15,0,15,0),width:double.infinity,child:Divider(thickness:2,),),
                Items(height,width,Colors.green),
                Container(margin:EdgeInsets.fromLTRB(15,0,15,0),width:double.infinity,child:Divider(thickness:2,),),
                Items(height,width,Colors.red),
                Container(margin:EdgeInsets.fromLTRB(15,0,15,0),width:double.infinity,child:Divider(thickness:2,),),
                Items(height,width,Colors.green),
                Container(margin:EdgeInsets.fromLTRB(15,0,15,0),width:double.infinity,child:Divider(thickness:2,),),
                Items(height,width,Colors.red),
                Container(margin:EdgeInsets.fromLTRB(15,0,15,0),width:double.infinity,child:Divider(thickness:2,),),
                Items(height,width,Colors.green),
                Container(margin:EdgeInsets.fromLTRB(15,0,15,0),width:double.infinity,child:Divider(thickness:2,),),
                Items(height,width,Colors.red),
                Container(margin:EdgeInsets.fromLTRB(15,0,15,0),width:double.infinity,child:Divider(thickness:2,),),
                Items(height,width,Colors.green),
                Container(margin:EdgeInsets.fromLTRB(15,0,15,0),width:double.infinity,child:Divider(thickness:2,),),
                Items(height,width,Colors.red),
                Container(margin:EdgeInsets.fromLTRB(15,0,15,0),width:double.infinity,child:Divider(thickness:2,),),
                Items(height,width,Colors.green),
                Container(margin:EdgeInsets.fromLTRB(15,0,15,0),width:double.infinity,child:Divider(thickness:2,),),
                Items(height,width,Colors.red),
                Container(margin:EdgeInsets.fromLTRB(15,0,15,0),width:double.infinity,child:Divider(thickness:2,),),
                Items(height,width,Colors.green)
              ],
            ),
          ],
        ),
      ),
    );
  }
}

