import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileCardWidget extends StatelessWidget {
  const ProfileCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
