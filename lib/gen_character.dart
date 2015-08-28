library gen_character;

import 'dart:html';
import '/Users/HAQ/Documents/GitHub/Character_Gen_DD5/lib/model/entity.dart';
import 'package:Character_Gen_DD5/Entity.dart';
import 'package:Character_Gen_DD5/lib/model/Entity.dart';
import 'model/race.dart';
import 'model/character_class.dart';

InputElement _strength = querySelector('#str-int');
InputElement _dexterity = querySelector('#dex-int');
InputElement _constitution = querySelector('#con-int');
InputElement _intelligence = querySelector('#intl-int');
InputElement _wisdom = querySelector('#wis-int');
InputElement _charisma = querySelector('#cha-int');
ButtonElement _genButton = querySelector('#gen-button');

SelectElement raceSelect = querySelector("#race-box");
SelectElement classSelect = querySelector('#class-box');

int stre;
int dext;
int cons;
int inte;
int wisd;
int chas;

String character_race;
String character_class;

Entity character = new Entity();
Race characterRace;
CharClass characterClass;

initBaseCharacter() {
  raceSelect.onChange.listen((_) => _setRace(raceSelect));
  classSelect.onChange.listen((_) => _setClass(classSelect));

  _genButton.onClick.listen((_) => _generate());
//  _genButton.onClick.listen((_) => _generate);

  print("Abilities Captured! Str: $stre");
}

_setRace(SelectElement race) {
  character_race = race.value;
}

_setClass(SelectElement cClass) {
  character_class = cClass.value;
}

_generate() {
  stre = int.parse(_strength.text) == null ? 10 : int.parse(_strength.text);
  dext = int.parse(_dexterity.text) == null ? 10 : int.parse(_dexterity.text);
  cons = int.parse(_constitution.text) == null ? 10 : int.parse(_constitution.text);
  inte = int.parse(_intelligence.text) == null ? 10 : int.parse(_intelligence.text);
  wisd = int.parse(_wisdom.text) == null ? 10 : int.parse(_wisdom.text);
  chas = int.parse(_charisma.text) == null ? 10 : int.parse(_charisma.text);

  _instClass(character_class);
  _instRace(character_race);



}

_instClass(String className) {
  String e = className;
  switch(e) {
    case 'ranger' :
      characterClass = new Ranger();
      break;
    case 'warlock' :
      characterClass = new Warlock();
      break;
    case 'elf' :
      characterClass = new Bard();
      break;
    default:
      characterClass = new Ranger();
      break;
  }

}

_instRace(String raceName) {
  String e = raceName;
  switch(e) {
    case 'human' :
      characterRace = new Human();
      break;
    case 'tiefling' :
      characterRace = new Tiefling();
      break;
    case 'elf' :
      characterRace = new Elf();
      break;
    default:
      characterRace = new Human();
      break;
  }
}
