import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee/Screens/websites_analysis_screen/website_analysis_cubit/website_analysis_states.dart';
import 'package:ieee/models/repo_content_model.dart';

import '../../../models/response_seo_model.dart';
import '../../../network/local/shared_pref.dart';
import '../../../network/remote/dio_helper.dart';
import '../../../network/remote/end_points.dart';

class WebsiteAnalysisCubit extends Cubit<WebsiteAnalysisStates> {
  WebsiteAnalysisCubit() : super(WebsiteAnalysisInitialState());

  static WebsiteAnalysisCubit get(context) => BlocProvider.of<WebsiteAnalysisCubit>(context);

  var githubRepoLinkController = TextEditingController();

  RepoContentModel? repoContentModel;

  Future<void> getRepoContents() async {
      var githubDio = Dio();

      emit(GetContentRepoLoadingState());

      await githubDio.get(
        options: Options(
          headers: {
          'Authorization': 'token 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'
        }
        ),
        "https://api.github.com/repos/${githubRepoLinkController.text}/contents/",
      ).then((value)
      {
        repoContentModel = RepoContentModel.fromJson(value.data[1]);
        String downloadUrl = repoContentModel!.download_url;
        getHtmlCode(downloadUrl);
        emit(GetContentRepoSuccessState());
        print("Status Code: ${value.statusCode}");
        print("Data: ${repoContentModel}");
        print("download url is : ${repoContentModel!.download_url}");
      }).catchError((e){
        emit(GetContentRepoFailureState());
        print("Error: ${e.toString()}");
      });
  }


  Future<void> getHtmlCode(String url) async {
    var codeDio = Dio();

    emit(GetHtmlCodeLoadingState());

    await codeDio.get(
      options: Options(
        headers: {
          'Authorization': 'token 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'
        },
      ),
      url,
    ).then((value) {
      String code = value.data;
      emit(GetHtmlCodeSuccessState());
      getSeoProbability(code);
      print("Status Code: ${value.statusCode}");
      print("Data: ${value.data}");
    }).catchError((e) {
      emit(GetHtmlCodeFailureState());
      print("Error: ${e.toString()}");
    });
  }

  ResponseOfSEOModel? responseOfSEOModel;

  Future<void> getSeoProbability(String htmlCode) async
  {
    emit(GetSeoResponseLoadingState());

    await DioHelper.postData(
      token: LocalStorage.token,
        url: SEOANALYZER,
        data: {
          'html' : htmlCode,
        }).then((onValue){
      responseOfSEOModel = ResponseOfSEOModel.fromJson(onValue.data);
      print("The html code is : ${onValue.data}");
      emit(GetSeoResponseSuccessState());
    })  .catchError((error){
      print('error is : ${error.toString()}');
      emit(GetSeoResponseFailureState());
    });
  }



}