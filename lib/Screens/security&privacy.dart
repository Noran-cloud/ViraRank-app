import 'package:flutter/material.dart';
import 'package:ieee/Screens/changePassword.dart';
import 'package:ieee/Screens/privacy.dart';
import 'package:ieee/Screens/settings.dart';

class Security_Privacy extends StatelessWidget {
  const Security_Privacy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios,color: Color(0xff5893D4),),onPressed: () => Navigator.pop(context),),
        title: Text('SECURITY AND PRIVACY',style: TextStyle(color: Colors.black,fontSize: 23),),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            SizedBox(height: 30,),
            setting_options(null, 'Change Password', ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> Change_password()))),
            SizedBox(height: 10,),
            setting_options(null, 'Privacy', ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=> Privacy())))
          ],
        ),
      ),
    );
  }
}