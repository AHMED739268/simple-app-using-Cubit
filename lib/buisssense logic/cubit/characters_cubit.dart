import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../data/Model/charactermodel.dart';
import '../../data/Reprosatry/characterReposary.dart';
part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  CharacterRepository? characterRepository;

  CharactersCubit({this.characterRepository}) : super(CharactersInitial());

  Future<List<Results>?> fetchAllCharacters() async {
    emit(loadeddata());
    try {
      final List<Results>?  characterss = await characterRepository?.getAllCharacters();
      emit(loadeddata(characters: characterss));
      return characterss;

    } catch (e) {
      print('e');
      return [];
    }
  }
}
