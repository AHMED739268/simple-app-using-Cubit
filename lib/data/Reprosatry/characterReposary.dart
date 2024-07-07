import '../ApiServices/characterservices.dart';
import '../Model/charactermodel.dart';

class CharacterRepository {
  final CharacterServices characterServices;

  CharacterRepository({required this.characterServices});

  Future<List<Results>> getAllCharacters() async {
    return await characterServices.getAllCharacters();
  }
}
