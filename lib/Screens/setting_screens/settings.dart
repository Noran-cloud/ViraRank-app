import 'package:flutter/material.dart';
import 'package:ieee/Screens/setting_screens/about.dart';
import 'package:ieee/Screens/editProfile.dart';
import 'package:ieee/Screens/setting_screens/rateApp.dart';
import 'package:ieee/Screens/security&privacy.dart';
import 'package:ieee/Screens/setting_screens/setting_screens_widgets/profile_card_widget.dart';
import 'package:ieee/Screens/setting_screens/setting_screens_widgets/setting_options.dart';
import 'package:ieee/components/components.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: customAppBar("Setting", context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50,),
              Text('Account',style: TextStyle(color: Colors.black,fontSize: 23),),
              SizedBox(height: 20,),
              GestureDetector(
                onTap: () {
                  navigateTo(Editprofile(), context);
                },
                child: ProfileCardWidget(),
              ),
              SizedBox(height: 80,),
              Text('Setting',style: TextStyle(color: Colors.black,fontSize: 23),),
              SizedBox(height: 10,),
              SettingOptions(
                icon: Icons.info,
                  title: 'About this App',
                  onTap: ()
                  {
                    navigateTo(About(), context);
                  }
              ),
              SettingOptions(
                icon: Icons.lock_outline,
                  title: 'Security and Privacy',
                  onTap: ()
                  {
                    navigateTo(Security_Privacy(), context);
                  }
              ),
              SettingOptions(
                icon: Icons.star,
                  title: 'Rate App',
                  onTap: ()
                  {
                    navigateTo(Rateapp(), context);
                  }
              ),
            ],
          ),
        ),
      ),
    );
  }
}
