import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../buisssense logic/cubit/characters_cubit.dart';

import '../../data/Model/charactermodel.dart';

class CharactersScreen extends StatefulWidget {
  const CharactersScreen({super.key});

  @override
  State<CharactersScreen> createState() => _CharactersScreenState();
}

class _CharactersScreenState extends State<CharactersScreen> {
  late List<Results>? allCharacters;

  @override
  void initState() {
    super.initState();
    BlocProvider.of<CharactersCubit>(context).fetchAllCharacters();
  }

  Widget blocBuilder() {
    return BlocBuilder<CharactersCubit, CharactersState>(
      builder: (context, state) {
        if (state is loadeddata) {
          allCharacters = (state).characters ;
          return ListView.builder(
            itemCount: allCharacters?.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(allCharacters?[index].name ?? 'No name'),
                subtitle: Text(allCharacters?[index].status ?? 'No status'),
              );
            },
          );
        }else {
          return Center(child: Text('No data available.'));
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Characters"),
      ),
      body: blocBuilder(),
    );
  }
}
