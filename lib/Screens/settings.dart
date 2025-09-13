import 'package:flutter/material.dart';
import 'package:ieee/Screens/about.dart';
import 'package:ieee/Screens/editProfile.dart';
import 'package:ieee/Screens/rateApp.dart';
import 'package:ieee/Screens/security&privacy.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white,
      leading: IconButton(icon:Icon(Icons.arrow_back_ios_new,color: Color(0xff5893D4),),onPressed: () => Navigator.pop(context),),
      title: Text('SETTING', style: TextStyle(color: Colors.black)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50,),
            Text('Account',style: TextStyle(color: Colors.black,fontSize: 23),),
            SizedBox(height: 20,),
            GestureDetector(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> Editprofile())),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('assets/images/profile.jpg'),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Mikasa',style: TextStyle(color: Colors.black,fontSize: 22),),
                            Text('Personal info',style: TextStyle(color: Colors.black,fontSize: 17),)  
                          ],
                        ),
                        SizedBox(width: 30,),
                        Icon(Icons.arrow_forward_ios,color: Color(0xff5893D4),)
                ],
              ),
            ),
            SizedBox(height: 80,),
            Text('Setting',style: TextStyle(color: Colors.black,fontSize: 23),),
            SizedBox(height: 10,),
            setting_options(Icons.info, 'About this App', ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=> About()))),
            setting_options(Icons.lock_outline, 'Security and Privacy', ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> Security_Privacy()))),
            setting_options(Icons.star, 'Rate App', ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=> Rateapp()))),
          ],
        ),
      ),
    );
  }
}

Widget setting_options (IconData? icon, String title, VoidCallback onTap){
  return GestureDetector(
    onTap: onTap,
    child: SizedBox(
                height: 62,
                width: 400,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(color: const Color.fromARGB(255, 230, 227, 227))
                  ),
                  color: Colors.white,
                  child: ListTile( 
                    leading: Icon(icon,color: Colors.black,),
                    title: Text(title,style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500,fontFamily: 'Ubuntu'),),
                    trailing: SizedBox(width: 15,
                      child: Icon(Icons.arrow_forward_ios,color: Color(0xff5893D4)))
                  ),
                ),
              ),
  );
}