import 'package:dio/dio.dart';

import 'package:projectbycubitbloc/constans/strings.dart';

import '../Model/charactermodel.dart';

class CharacterServices {
  Dio dio = Dio();

   Future<List<Results>> getAllCharacters() async {
     try{
       Response response=await dio.get('${baseurl}character');
       Map<String,dynamic>jsondata =response.data;
       List<dynamic> results= jsondata['results'];
       List<Results>allcharacter=[];


       for(var result in results){
         Results objectcharacter=Results.fromJson(result);
         allcharacter.add(objectcharacter);


     }
       return allcharacter;
     }catch(e){
       print(e);
       return [];
     }
    




    
    
  }
 
}
