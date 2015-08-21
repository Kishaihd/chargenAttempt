library gen_character;

import 'model/entity.dart';
import 'dart:html';

InputElement get _strength => querySelector('#str-int');
InputElement get _dexterity => querySelector('#dex-int');
InputElement get _constitution => querySelector('#con-int');
InputElement get _intelligence => querySelector('#intl-int');
InputElement get _wisdom => querySelector('#wis-int');
InputElement get _charisma => querySelector('#cha-int');
ButtonElement get _statsButton => querySelector('#stats-button');

var stre;
var dext;
var cons;
var inte;
var wisd;
var chas;

Entity character = new Entity();

initBaseCharacter() {

  _statsButton.onClick.listen((_) => _addStats);
  print("Abilities Captured! Str: $stre");
}

_addStats() {
  stre = int.parse(_strength.text);
  dext = int.parse(_dexterity.text);
  cons = int.parse(_constitution.text);
  inte = int.parse(_intelligence.text);
  wisd = int.parse(_wisdom.text);
  chas = int.parse(_charisma.text);

}

