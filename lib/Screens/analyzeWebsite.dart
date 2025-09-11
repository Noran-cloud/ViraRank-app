import 'package:flutter/material.dart';
import 'package:ieee/Screens/analyzePost.dart';

class Analyzewebsite extends StatelessWidget {
  const Analyzewebsite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios_new,color: Color(0xff5893D4),),onPressed: () => Navigator.pop(context),),
        title: Text('ANALYZE WEBSITE',style: TextStyle(color: Colors.black),),
      ),
      body: SingleChildScrollView(
        child: Column( mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: Text('See your website’s potential',style: TextStyle(color: Color(0xff5893D4),fontWeight: FontWeight.bold,fontSize: 32,fontFamily: 'Ubuntu'),),
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 80,height: 1,
                      color: Colors.black54,
                    ),
                    Text('OR',style: TextStyle(color: const Color.fromARGB(255, 185, 185, 185),fontWeight: FontWeight.bold),),
                    Container(
                      width: 80,height: 1,
                      color: Colors.black54,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 193, 221, 245),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
                ),
                onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> Analyzepost())), 
              child: Text('Analyze Post',style: TextStyle(color: Color(0xff1E88E5)),)),
              Image.asset('assets/images/spot.png')
          ],
        ),
      ),
    );
  }
}