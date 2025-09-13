import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee/Screens/websites_analysis_screen/analyzeWebsite.dart';
import 'package:ieee/Screens/posts_analysis_screen/select_platform.dart';
import 'package:ieee/Screens/setting_screens/settings.dart';
import 'package:ieee/Screens/websites_analysis_screen/webResult.dart';
import 'package:ieee/Screens/websites_analysis_screen/website_analysis_cubit/website_analysis_cubit.dart';
import 'package:ieee/Screens/websites_analysis_screen/website_analysis_cubit/website_analysis_states.dart';
import 'package:ieee/components/components.dart';
import 'package:ieee/models/response_seo_model.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SafeArea(
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(25)),
              ),
              color: Colors.white,
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/images/ViraRank.png', width: 110),
                    GestureDetector(
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> Settings())),
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage('assets/images/profile.jpg'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child:  Text('Start your analysis with one click',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 35,fontFamily: 'Ubuntu'),),
          ),
          SizedBox(height: 20,),
          GestureDetector(
            onTap: () {
              navigateTo(website_analysis(), context);
            },
            child: SizedBox(
              height: 70,
              width: 270,
              child: Card(
                elevation: 5,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(23),
                    side: BorderSide(color:  const Color.fromARGB(255, 231, 229, 229),)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Analyze Website',style: TextStyle(color:Color(0xff5893D4),fontWeight: FontWeight.bold ,fontSize: 20),),
                    SizedBox(width: 30,),
                    Icon(Icons.arrow_forward_ios,color: Color(0xff5893D4),)
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Platform()));
            },
            child: SizedBox(
              height: 70,
              width: 270,
              child: Card(
                elevation: 5,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(23),
                    side: BorderSide(color:  const Color.fromARGB(255, 231, 229, 229),)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Analyze Post',style: TextStyle(color:Color(0xff5893D4),fontWeight: FontWeight.bold ,fontSize: 20),),
                    SizedBox(width: 30,),
                    Icon(Icons.arrow_forward_ios,color: Color(0xff5893D4),)
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 15,),
          Image.asset('assets/images/home_png.png',height: 300,)
        ],
      ),
    );
  }
}
