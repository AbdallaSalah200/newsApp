import 'package:dio/dio.dart';

class NewsServices {
final Dio  dio;

  NewsServices( this.dio);
   getnews()async{
    var response =await dio.get('https://newsapi.org/v2/top-headlines?apiKey=e3356860b2d843a28dae59e708fecd86&country=eg&category=general');
    print(response);
   }

}