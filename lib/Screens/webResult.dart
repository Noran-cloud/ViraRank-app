import 'dart:ffi';

import 'package:flutter/material.dart';

class WebResult extends StatefulWidget {
  const WebResult({super.key});

  @override
  State<WebResult> createState() => _WebResultState();
}

class _WebResultState extends State<WebResult> {
  bool rank = true;
  double percent = 80;
  int top_class = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios,color: Color(0xff5893D4),),onPressed: () => Navigator.pop(context),),
        title: Text('RESULT',style: TextStyle(color: Colors.black,fontSize: 25),),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25)
        ),
        
      ),
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: Center(
          child: Column( crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('website overview',style: TextStyle(color: Colors.white,fontSize: 24,fontFamily: 'Ubuntu'),),
              ),
              SizedBox(height: 10,),
              Container(
                width: 328, height: 261,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 8),
                      child: Text('Rank', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,fontFamily: 'Ubuntu'),),
                    ),
                    Center(
                      child: Container(
                        width: 200, height: 200,
                        decoration: BoxDecoration(
                          border: Border.all(color: rank? Colors.green : Colors.red,width: 20),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Column( mainAxisAlignment: MainAxisAlignment.center,
                          children: [ 
                            rank? Image.asset('assets/images/up.png',): Image.asset('assets/images/down.png'),
                            SizedBox(height: 10,),
                            Text(rank?'match' : 'not match',style: TextStyle(fontSize: 16,fontFamily: 'Ubuntu'),)
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ),
              SizedBox(height: 20,),
              Container(
                width: 328, height: 140,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 8),
                      child: Text('Chance to appear in search',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,fontFamily: 'Ubuntu'),),
                    ),
                    SizedBox(height: 30,),
                    Row( mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox( 
                          width: 240,
                          child: SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                                    trackHeight: 12, 
                                    thumbShape: SliderComponentShape.noThumb, 
                                    overlayShape: SliderComponentShape.noThumb,
                                    activeTrackColor: Color(0xff0000FF), 
                                    inactiveTrackColor: Colors.grey.shade300,
                                  ),
                            child: Slider(
                              min: 0,
                              max: 100,
                              value: percent, 
                              onChanged: (value) {
                                setState(() {
                                  percent = value;
                                });
                              } 
                              ),
                          ),
                        ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text('${percent.toInt()}%',style: TextStyle(color: Colors.black),),
                          )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                width: 328, height: 190,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Top Class',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,fontFamily: 'Ubuntu'),),
                      SizedBox(height: 10,),
                      Row(children: [ 
                        top_class <= 10? Image.asset('assets/images/top_icon.png',)
                        :  Container(width: 30,height: 50, decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.red),child: Icon(Icons.keyboard_arrow_down,color: Colors.black,),),
                        SizedBox(width: 30,),
                        Text(top_class <= 10? 'Top $top_class' : 'Below 10',style: TextStyle(fontSize: 16,fontFamily: 'Ubuntu'),)
                      ],),
                      SizedBox(height: 10,),
                      top_class <= 10?
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(text: 'Likely to rank ',style: TextStyle(fontSize: 16,color: Colors.black,fontFamily: 'Ubuntu')),
                            TextSpan(text: ' #$top_class ',style: TextStyle(fontSize: 16,color: Color(0xff27D095),fontFamily: 'Ubuntu')),
                            TextSpan(text: 'on Google',style: TextStyle(fontSize: 16,color: Colors.black,fontFamily: 'Ubuntu'))
                          ]
                        )
                        ): 
                        Text('Needs work to reach first page',style: TextStyle(fontSize: 16,color: Colors.black,fontFamily: 'Ubuntu'),)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 60,)
            ],
          ),
        ),
      ),
    );
  }
}