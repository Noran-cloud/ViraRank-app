import 'package:flutter/material.dart';
import 'package:ieee/Screens/analyzePost.dart';
import 'package:ieee/Screens/sign_in.dart';

class Platform extends StatelessWidget {
  const Platform({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: Color(0xff5893D4)),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text('ANALYZE POST', style: TextStyle(color: Colors.black)),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'select platform',
                style: TextStyle(
                  color: Color(0xff5893D4),
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                  fontFamily: 'Ubuntu'
                ),
              ),
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Analyzepost()),
                  ),
                  child: social_icons('assets/images/instagram.png'),
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Analyzepost()),
                  ),
                  child: social_icons('assets/images/facebook.png'),
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Analyzepost()),
                  ),
                  child: social_icons('assets/images/linkedin.png'),
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Analyzepost()),
                  ),
                  child: social_icons('assets/images/X.png'),
                ),
              ],
            ),
            SizedBox(height: 35),
            Image.asset('assets/images/analyze_post_png.png'),
          ],
        ),
      ),
    );
  }
}
