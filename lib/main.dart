import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee/Screens/home.dart';
import 'package:ieee/Screens/posts_analysis_screen/posts_analysis_cubit/posts_analysis_cubit.dart';
import 'package:ieee/Screens/setting_screens/settings.dart';
import 'package:ieee/Screens/splach.dart';
import 'package:ieee/Screens/websites_analysis_screen/webResult.dart';

import 'Screens/websites_analysis_screen/website_analysis_cubit/website_analysis_cubit.dart';
import 'network/local/shared_pref.dart';
import 'network/remote/dio_helper.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  await LocalStorage.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) => WebsiteAnalysisCubit(),
        ),
        BlocProvider(
          create: (BuildContext context) => PostsAnalysisCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: AppBarTheme(titleTextStyle: TextStyle(fontFamily: 'Bruno')),
        ),
        home: SplashScreen(),

      ),
    );
  }
}
