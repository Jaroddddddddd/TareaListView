import 'package:flutter/material.dart';
import 'package:cartoons_flutter/model/character.dart';

class CharacterWidget extends StatelessWidget {
  final Character character;

  const CharacterWidget({Key? key, required this.character}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO 0: Usa widgets básicos que ya conoces para crear este widget/cell.
    // Algunos consejos útiles:
    // * No elimine el widget Container(), agregue todos sus widgets dentro. Recuerde que el widget Container
    //   tiene un solo hijo, pero su primer paso probablemente debería ser agregar un widget Row como ese hijo.
    // * Cargue imágenes con Image.asset (character.image, ...
    // * En el widget Container, siéntase libre de usar decoration:
    //   BoxDecoration (color: Colors.black12, borderRadius: BorderRadius.all (Radius.circular (20.0)))
    return Container();
  }
}
