import 'package:flutter/material.dart';

class Change_password extends StatelessWidget {
   Change_password({super.key});
    final old_password = TextEditingController();
    final new_password = TextEditingController();
    final confirm_password = TextEditingController();
    final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: ()=> Navigator.pop(context), 
          icon: Icon(Icons.arrow_back_ios,color: Color(0xff5893D4),)),
        title: Text('CHANGE PASSWORD',style: TextStyle(color: Colors.black,fontSize: 19),),  
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Form(
              key: _formkey,
              child: Column(
                children: [
                  SizedBox(height: 30,),
                  fields(old_password, 
                  'Enter your password',
                  (value){  
                    if(value == null || value.isEmpty)
                    return 'Please, enter your password';
                  }),
                  SizedBox(height: 10,),
                  fields(new_password, 'Enter new password',(value){  
                    if(value == null || value.isEmpty)
                    return 'Please, enter your new password';
                  }),
                  SizedBox(height: 10,),
                  fields(confirm_password, 'Confirm your password',(value){  
                    if(value == null || value.isEmpty)
                    return 'Please, confirm your new password';
                    if(confirm_password.text != new_password.text)
                    return 'wrong password';
                  }),
                  SizedBox(height: 15,),
                  ElevatedButton(onPressed: (){
                    if(_formkey.currentState!.validate())
                    print('valid info');
                  }, 
                  style: ElevatedButton.styleFrom( 
                    backgroundColor: Color(0xff5893D4),
                    minimumSize: Size(270,80),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
                  ),
                  child: Text('Save',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget fields(TextEditingController controller, String hint, FormFieldValidator<String>? validate){
  return SizedBox(
        width: 300,
        child: TextFormField(
          controller: controller,
          validator: validate,
          decoration: InputDecoration(
            fillColor: Color.fromARGB(255, 235, 235, 235),
            filled: true,
            hintText: hint,
            hintStyle: TextStyle(color: const Color.fromARGB(255, 82, 82, 82),fontWeight: FontWeight.bold),
            border: OutlineInputBorder(borderSide: BorderSide.none,borderRadius: BorderRadius.circular(15)),
            contentPadding: EdgeInsets.symmetric(vertical: 30,horizontal: 20)
          ),
        ),
      );
}