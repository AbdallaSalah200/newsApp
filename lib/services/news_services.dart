import 'package:dio/dio.dart';
import 'package:news_app_ui_setup/models/artical_model.dart';

class NewsServices {
final Dio  dio;

  NewsServices( this.dio);
 Future<List<ArticleModel>>     getnews()async{
    var response =await dio.get('https://newsapi.org/v2/top-headlines?country=us&apiKey=3c88955c487e4d9db668f011dd85e737&category=general');
    //print(response);
    Map <String,dynamic> jsonData= response.data ;
    List <dynamic> articles =jsonData['articles'];
    List< ArticleModel> articalsList =[];
    for (var artical in articles) {
      ArticleModel articalmodel =ArticleModel(image: artical['urlToImage'], title: artical['title'], subTitle: artical['description']);
      articalsList.add(articalmodel);
    }
    return articalsList ;
   }

} 