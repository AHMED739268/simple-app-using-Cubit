part of 'characters_cubit.dart';

@immutable
sealed class CharactersState {}

final class CharactersInitial extends CharactersState {}

class loadeddata extends CharactersState{

   List<Results>? characters;
   loadeddata({ this.characters });



}


