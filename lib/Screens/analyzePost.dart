import 'package:flutter/material.dart';

class Analyzepost extends StatelessWidget {
  const Analyzepost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios_new,color: Color(0xff5893D4),),onPressed: () => Navigator.pop(context),),
        title: Text('ANALYZE POST',style: TextStyle(color: Colors.black),),
      ),
      body: SingleChildScrollView(
        child: Column( mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: Text('Optimize your social content',style: TextStyle(color: Color(0xff5893D4),fontWeight: FontWeight.bold,fontSize: 32,fontFamily: 'Ubuntu'),),
              ),
            SizedBox(height: 30,),
            SizedBox(
                height: 70,
                width: 270,
                child: Card(
                  elevation: 5,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(23),
                    side: BorderSide(color:  const Color.fromARGB(255, 231, 229, 229),)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'https://www.fing.com/',
                        hintStyle: TextStyle(color: Color(0xffC8E6F5)),
                        border: OutlineInputBorder(borderSide: BorderSide.none)
                      ),
                    ),
                  )
                ),
              ),
              SizedBox(height: 40,),
              Image.asset('assets/images/spot.png')
          ],
        ),
      ),
    );
  }
}