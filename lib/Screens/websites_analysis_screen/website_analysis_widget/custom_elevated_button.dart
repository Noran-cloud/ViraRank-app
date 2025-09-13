import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee/Screens/websites_analysis_screen/website_analysis_cubit/website_analysis_states.dart';
import 'package:ieee/models/response_seo_model.dart';
import '../website_analysis_cubit/website_analysis_cubit.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({super.key, required this.textOfButton, required this.onPressed});

  final String textOfButton;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WebsiteAnalysisCubit, WebsiteAnalysisStates>(
      builder: (context, state) => ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 193, 221, 245),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
        ),
        child: Text(textOfButton,style: TextStyle(color: Color(0xff1E88E5)),),
      ),
    );
  }
}
