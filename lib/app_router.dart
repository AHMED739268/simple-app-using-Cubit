import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectbycubitbloc/presentation/screens/character_detailes.dart';
import 'package:projectbycubitbloc/presentation/screens/characters_screen.dart';

import 'buisssense logic/cubit/characters_cubit.dart';
import 'constans/strings.dart';
import 'data/ApiServices/characterservices.dart';
import 'data/Reprosatry/characterReposary.dart';


class approuter{
  late CharacterRepository characterRepository;
  late CharactersCubit charactersCubit;

  approuter(){
    characterRepository=CharacterRepository(characterServices: CharacterServices());
    charactersCubit=CharactersCubit(characterRepository:characterRepository );

  }

  Route? generateroute(RouteSettings settings){
//CharactersScreen()
    switch(settings.name){
      case  characterScreen:
        return MaterialPageRoute(
            builder:(_) => BlocProvider(
              create: (context) =>charactersCubit,
              child:CharactersScreen(),
            ));


      case characterdetailesScreen:
        return MaterialPageRoute(builder: (_)=>characterdetailes());





    }



  }

}