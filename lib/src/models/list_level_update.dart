/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="list_level_update.dart">
 *   Copyright (c) 2020 Aspose.Words for Cloud
 * </copyright>
 * <summary>
 *   Permission is hereby granted, free of charge, to any person obtaining a copy
 *  of this software and associated documentation files (the "Software"), to deal
 *  in the Software without restriction, including without limitation the rights
 *  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 *  copies of the Software, and to permit persons to whom the Software is
 *  furnished to do so, subject to the following conditions:
 * 
 *  The above copyright notice and this permission notice shall be included in all
 *  copies or substantial portions of the Software.
 * 
 *  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 *  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 *  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 *  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 *  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 *  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 *  SOFTWARE.
 * </summary>
 * --------------------------------------------------------------------------------
 */

library aspose_words_cloud;

import '../../aspose_words_cloud.dart';

/// Represents a document list levels.
class ListLevelUpdate implements ModelBase {
  /// Gets or sets the justification of the actual number of the list item.
  ListLevelUpdate_AlignmentEnum alignment;

  /// Gets or sets a value indicating whether true if the level turns all inherited numbers to Arabic, false if it preserves
  /// their number style.
  bool isLegal;

  /// Gets or sets returns or sets the number format for the list level.
  String numberFormat;

  /// Gets or sets returns or sets the position (in points) of the number or bullet for the list
  /// level.
  double numberPosition;

  /// Gets or sets returns or sets the number style for this list level.
  ListLevelUpdate_NumberStyleEnum numberStyle;

  /// Gets or sets or returns the list level that must appear before the specified list level
  /// restarts numbering.
  int restartAfterLevel;

  /// Gets or sets returns or sets the starting number for this list level.
  int startAt;

  /// Gets or sets returns or sets the tab position (in points) for the list level.
  double tabPosition;

  /// Gets or sets returns or sets the position (in points) for the second line of wrapping text
  /// for the list level.
  double textPosition;

  /// Gets or sets returns or sets the character inserted after the number for the list level.
  ListLevelUpdate_TrailingCharacterEnum trailingCharacter;

  @override
  void deserialize(Map<String, dynamic> json) {
    if (json.containsKey('Alignment')) {
      switch (json['Alignment']) {
        case 'Left': this.alignment = ListLevelUpdate_AlignmentEnum.left; break;
        case 'Center': this.alignment = ListLevelUpdate_AlignmentEnum.center; break;
        case 'Right': this.alignment = ListLevelUpdate_AlignmentEnum.right; break;
        default: this.alignment = null; break;
      }
    } else {
      this.alignment = null;
    }

    if (json.containsKey('IsLegal')) {
      this.isLegal = json['IsLegal'];
    } else {
      this.isLegal = null;
    }

    if (json.containsKey('NumberFormat')) {
      this.numberFormat = json['NumberFormat'];
    } else {
      this.numberFormat = null;
    }

    if (json.containsKey('NumberPosition')) {
      this.numberPosition = json['NumberPosition'];
    } else {
      this.numberPosition = null;
    }

    if (json.containsKey('NumberStyle')) {
      switch (json['NumberStyle']) {
        case 'Arabic': this.numberStyle = ListLevelUpdate_NumberStyleEnum.arabic; break;
        case 'UppercaseRoman': this.numberStyle = ListLevelUpdate_NumberStyleEnum.uppercaseRoman; break;
        case 'LowercaseRoman': this.numberStyle = ListLevelUpdate_NumberStyleEnum.lowercaseRoman; break;
        case 'UppercaseLetter': this.numberStyle = ListLevelUpdate_NumberStyleEnum.uppercaseLetter; break;
        case 'LowercaseLetter': this.numberStyle = ListLevelUpdate_NumberStyleEnum.lowercaseLetter; break;
        case 'Ordinal': this.numberStyle = ListLevelUpdate_NumberStyleEnum.ordinal; break;
        case 'Number': this.numberStyle = ListLevelUpdate_NumberStyleEnum.number; break;
        case 'OrdinalText': this.numberStyle = ListLevelUpdate_NumberStyleEnum.ordinalText; break;
        case 'Hex': this.numberStyle = ListLevelUpdate_NumberStyleEnum.hex; break;
        case 'ChicagoManual': this.numberStyle = ListLevelUpdate_NumberStyleEnum.chicagoManual; break;
        case 'Kanji': this.numberStyle = ListLevelUpdate_NumberStyleEnum.kanji; break;
        case 'KanjiDigit': this.numberStyle = ListLevelUpdate_NumberStyleEnum.kanjiDigit; break;
        case 'AiueoHalfWidth': this.numberStyle = ListLevelUpdate_NumberStyleEnum.aiueoHalfWidth; break;
        case 'IrohaHalfWidth': this.numberStyle = ListLevelUpdate_NumberStyleEnum.irohaHalfWidth; break;
        case 'ArabicFullWidth': this.numberStyle = ListLevelUpdate_NumberStyleEnum.arabicFullWidth; break;
        case 'ArabicHalfWidth': this.numberStyle = ListLevelUpdate_NumberStyleEnum.arabicHalfWidth; break;
        case 'KanjiTraditional': this.numberStyle = ListLevelUpdate_NumberStyleEnum.kanjiTraditional; break;
        case 'KanjiTraditional2': this.numberStyle = ListLevelUpdate_NumberStyleEnum.kanjiTraditional2; break;
        case 'NumberInCircle': this.numberStyle = ListLevelUpdate_NumberStyleEnum.numberInCircle; break;
        case 'DecimalFullWidth': this.numberStyle = ListLevelUpdate_NumberStyleEnum.decimalFullWidth; break;
        case 'Aiueo': this.numberStyle = ListLevelUpdate_NumberStyleEnum.aiueo; break;
        case 'Iroha': this.numberStyle = ListLevelUpdate_NumberStyleEnum.iroha; break;
        case 'LeadingZero': this.numberStyle = ListLevelUpdate_NumberStyleEnum.leadingZero; break;
        case 'Bullet': this.numberStyle = ListLevelUpdate_NumberStyleEnum.bullet; break;
        case 'Ganada': this.numberStyle = ListLevelUpdate_NumberStyleEnum.ganada; break;
        case 'Chosung': this.numberStyle = ListLevelUpdate_NumberStyleEnum.chosung; break;
        case 'GB1': this.numberStyle = ListLevelUpdate_NumberStyleEnum.gB1; break;
        case 'GB2': this.numberStyle = ListLevelUpdate_NumberStyleEnum.gB2; break;
        case 'GB3': this.numberStyle = ListLevelUpdate_NumberStyleEnum.gB3; break;
        case 'GB4': this.numberStyle = ListLevelUpdate_NumberStyleEnum.gB4; break;
        case 'Zodiac1': this.numberStyle = ListLevelUpdate_NumberStyleEnum.zodiac1; break;
        case 'Zodiac2': this.numberStyle = ListLevelUpdate_NumberStyleEnum.zodiac2; break;
        case 'Zodiac3': this.numberStyle = ListLevelUpdate_NumberStyleEnum.zodiac3; break;
        case 'TradChinNum1': this.numberStyle = ListLevelUpdate_NumberStyleEnum.tradChinNum1; break;
        case 'TradChinNum2': this.numberStyle = ListLevelUpdate_NumberStyleEnum.tradChinNum2; break;
        case 'TradChinNum3': this.numberStyle = ListLevelUpdate_NumberStyleEnum.tradChinNum3; break;
        case 'TradChinNum4': this.numberStyle = ListLevelUpdate_NumberStyleEnum.tradChinNum4; break;
        case 'SimpChinNum1': this.numberStyle = ListLevelUpdate_NumberStyleEnum.simpChinNum1; break;
        case 'SimpChinNum2': this.numberStyle = ListLevelUpdate_NumberStyleEnum.simpChinNum2; break;
        case 'SimpChinNum3': this.numberStyle = ListLevelUpdate_NumberStyleEnum.simpChinNum3; break;
        case 'SimpChinNum4': this.numberStyle = ListLevelUpdate_NumberStyleEnum.simpChinNum4; break;
        case 'HanjaRead': this.numberStyle = ListLevelUpdate_NumberStyleEnum.hanjaRead; break;
        case 'HanjaReadDigit': this.numberStyle = ListLevelUpdate_NumberStyleEnum.hanjaReadDigit; break;
        case 'Hangul': this.numberStyle = ListLevelUpdate_NumberStyleEnum.hangul; break;
        case 'Hanja': this.numberStyle = ListLevelUpdate_NumberStyleEnum.hanja; break;
        case 'Hebrew1': this.numberStyle = ListLevelUpdate_NumberStyleEnum.hebrew1; break;
        case 'Arabic1': this.numberStyle = ListLevelUpdate_NumberStyleEnum.arabic1; break;
        case 'Hebrew2': this.numberStyle = ListLevelUpdate_NumberStyleEnum.hebrew2; break;
        case 'Arabic2': this.numberStyle = ListLevelUpdate_NumberStyleEnum.arabic2; break;
        case 'HindiLetter1': this.numberStyle = ListLevelUpdate_NumberStyleEnum.hindiLetter1; break;
        case 'HindiLetter2': this.numberStyle = ListLevelUpdate_NumberStyleEnum.hindiLetter2; break;
        case 'HindiArabic': this.numberStyle = ListLevelUpdate_NumberStyleEnum.hindiArabic; break;
        case 'HindiCardinalText': this.numberStyle = ListLevelUpdate_NumberStyleEnum.hindiCardinalText; break;
        case 'ThaiLetter': this.numberStyle = ListLevelUpdate_NumberStyleEnum.thaiLetter; break;
        case 'ThaiArabic': this.numberStyle = ListLevelUpdate_NumberStyleEnum.thaiArabic; break;
        case 'ThaiCardinalText': this.numberStyle = ListLevelUpdate_NumberStyleEnum.thaiCardinalText; break;
        case 'VietCardinalText': this.numberStyle = ListLevelUpdate_NumberStyleEnum.vietCardinalText; break;
        case 'NumberInDash': this.numberStyle = ListLevelUpdate_NumberStyleEnum.numberInDash; break;
        case 'LowercaseRussian': this.numberStyle = ListLevelUpdate_NumberStyleEnum.lowercaseRussian; break;
        case 'UppercaseRussian': this.numberStyle = ListLevelUpdate_NumberStyleEnum.uppercaseRussian; break;
        case 'None': this.numberStyle = ListLevelUpdate_NumberStyleEnum.none; break;
        case 'Custom': this.numberStyle = ListLevelUpdate_NumberStyleEnum.custom; break;
        default: this.numberStyle = null; break;
      }
    } else {
      this.numberStyle = null;
    }

    if (json.containsKey('RestartAfterLevel')) {
      this.restartAfterLevel = json['RestartAfterLevel'];
    } else {
      this.restartAfterLevel = null;
    }

    if (json.containsKey('StartAt')) {
      this.startAt = json['StartAt'];
    } else {
      this.startAt = null;
    }

    if (json.containsKey('TabPosition')) {
      this.tabPosition = json['TabPosition'];
    } else {
      this.tabPosition = null;
    }

    if (json.containsKey('TextPosition')) {
      this.textPosition = json['TextPosition'];
    } else {
      this.textPosition = null;
    }

    if (json.containsKey('TrailingCharacter')) {
      switch (json['TrailingCharacter']) {
        case 'Tab': this.trailingCharacter = ListLevelUpdate_TrailingCharacterEnum.tab; break;
        case 'Space': this.trailingCharacter = ListLevelUpdate_TrailingCharacterEnum.space; break;
        case 'Nothing': this.trailingCharacter = ListLevelUpdate_TrailingCharacterEnum.nothing; break;
        default: this.trailingCharacter = null; break;
      }
    } else {
      this.trailingCharacter = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = new Map<String, dynamic>();
    if (this.alignment != null) {
      switch (this.alignment) {
        case ListLevelUpdate_AlignmentEnum.left: _result['Alignment'] = 'Left'; break;
        case ListLevelUpdate_AlignmentEnum.center: _result['Alignment'] = 'Center'; break;
        case ListLevelUpdate_AlignmentEnum.right: _result['Alignment'] = 'Right'; break;
        default: break;
      }
    }

    if (this.isLegal != null) {
      _result['IsLegal'] = this.isLegal;
    }

    if (this.numberFormat != null) {
      _result['NumberFormat'] = this.numberFormat;
    }

    if (this.numberPosition != null) {
      _result['NumberPosition'] = this.numberPosition;
    }

    if (this.numberStyle != null) {
      switch (this.numberStyle) {
        case ListLevelUpdate_NumberStyleEnum.arabic: _result['NumberStyle'] = 'Arabic'; break;
        case ListLevelUpdate_NumberStyleEnum.uppercaseRoman: _result['NumberStyle'] = 'UppercaseRoman'; break;
        case ListLevelUpdate_NumberStyleEnum.lowercaseRoman: _result['NumberStyle'] = 'LowercaseRoman'; break;
        case ListLevelUpdate_NumberStyleEnum.uppercaseLetter: _result['NumberStyle'] = 'UppercaseLetter'; break;
        case ListLevelUpdate_NumberStyleEnum.lowercaseLetter: _result['NumberStyle'] = 'LowercaseLetter'; break;
        case ListLevelUpdate_NumberStyleEnum.ordinal: _result['NumberStyle'] = 'Ordinal'; break;
        case ListLevelUpdate_NumberStyleEnum.number: _result['NumberStyle'] = 'Number'; break;
        case ListLevelUpdate_NumberStyleEnum.ordinalText: _result['NumberStyle'] = 'OrdinalText'; break;
        case ListLevelUpdate_NumberStyleEnum.hex: _result['NumberStyle'] = 'Hex'; break;
        case ListLevelUpdate_NumberStyleEnum.chicagoManual: _result['NumberStyle'] = 'ChicagoManual'; break;
        case ListLevelUpdate_NumberStyleEnum.kanji: _result['NumberStyle'] = 'Kanji'; break;
        case ListLevelUpdate_NumberStyleEnum.kanjiDigit: _result['NumberStyle'] = 'KanjiDigit'; break;
        case ListLevelUpdate_NumberStyleEnum.aiueoHalfWidth: _result['NumberStyle'] = 'AiueoHalfWidth'; break;
        case ListLevelUpdate_NumberStyleEnum.irohaHalfWidth: _result['NumberStyle'] = 'IrohaHalfWidth'; break;
        case ListLevelUpdate_NumberStyleEnum.arabicFullWidth: _result['NumberStyle'] = 'ArabicFullWidth'; break;
        case ListLevelUpdate_NumberStyleEnum.arabicHalfWidth: _result['NumberStyle'] = 'ArabicHalfWidth'; break;
        case ListLevelUpdate_NumberStyleEnum.kanjiTraditional: _result['NumberStyle'] = 'KanjiTraditional'; break;
        case ListLevelUpdate_NumberStyleEnum.kanjiTraditional2: _result['NumberStyle'] = 'KanjiTraditional2'; break;
        case ListLevelUpdate_NumberStyleEnum.numberInCircle: _result['NumberStyle'] = 'NumberInCircle'; break;
        case ListLevelUpdate_NumberStyleEnum.decimalFullWidth: _result['NumberStyle'] = 'DecimalFullWidth'; break;
        case ListLevelUpdate_NumberStyleEnum.aiueo: _result['NumberStyle'] = 'Aiueo'; break;
        case ListLevelUpdate_NumberStyleEnum.iroha: _result['NumberStyle'] = 'Iroha'; break;
        case ListLevelUpdate_NumberStyleEnum.leadingZero: _result['NumberStyle'] = 'LeadingZero'; break;
        case ListLevelUpdate_NumberStyleEnum.bullet: _result['NumberStyle'] = 'Bullet'; break;
        case ListLevelUpdate_NumberStyleEnum.ganada: _result['NumberStyle'] = 'Ganada'; break;
        case ListLevelUpdate_NumberStyleEnum.chosung: _result['NumberStyle'] = 'Chosung'; break;
        case ListLevelUpdate_NumberStyleEnum.gB1: _result['NumberStyle'] = 'GB1'; break;
        case ListLevelUpdate_NumberStyleEnum.gB2: _result['NumberStyle'] = 'GB2'; break;
        case ListLevelUpdate_NumberStyleEnum.gB3: _result['NumberStyle'] = 'GB3'; break;
        case ListLevelUpdate_NumberStyleEnum.gB4: _result['NumberStyle'] = 'GB4'; break;
        case ListLevelUpdate_NumberStyleEnum.zodiac1: _result['NumberStyle'] = 'Zodiac1'; break;
        case ListLevelUpdate_NumberStyleEnum.zodiac2: _result['NumberStyle'] = 'Zodiac2'; break;
        case ListLevelUpdate_NumberStyleEnum.zodiac3: _result['NumberStyle'] = 'Zodiac3'; break;
        case ListLevelUpdate_NumberStyleEnum.tradChinNum1: _result['NumberStyle'] = 'TradChinNum1'; break;
        case ListLevelUpdate_NumberStyleEnum.tradChinNum2: _result['NumberStyle'] = 'TradChinNum2'; break;
        case ListLevelUpdate_NumberStyleEnum.tradChinNum3: _result['NumberStyle'] = 'TradChinNum3'; break;
        case ListLevelUpdate_NumberStyleEnum.tradChinNum4: _result['NumberStyle'] = 'TradChinNum4'; break;
        case ListLevelUpdate_NumberStyleEnum.simpChinNum1: _result['NumberStyle'] = 'SimpChinNum1'; break;
        case ListLevelUpdate_NumberStyleEnum.simpChinNum2: _result['NumberStyle'] = 'SimpChinNum2'; break;
        case ListLevelUpdate_NumberStyleEnum.simpChinNum3: _result['NumberStyle'] = 'SimpChinNum3'; break;
        case ListLevelUpdate_NumberStyleEnum.simpChinNum4: _result['NumberStyle'] = 'SimpChinNum4'; break;
        case ListLevelUpdate_NumberStyleEnum.hanjaRead: _result['NumberStyle'] = 'HanjaRead'; break;
        case ListLevelUpdate_NumberStyleEnum.hanjaReadDigit: _result['NumberStyle'] = 'HanjaReadDigit'; break;
        case ListLevelUpdate_NumberStyleEnum.hangul: _result['NumberStyle'] = 'Hangul'; break;
        case ListLevelUpdate_NumberStyleEnum.hanja: _result['NumberStyle'] = 'Hanja'; break;
        case ListLevelUpdate_NumberStyleEnum.hebrew1: _result['NumberStyle'] = 'Hebrew1'; break;
        case ListLevelUpdate_NumberStyleEnum.arabic1: _result['NumberStyle'] = 'Arabic1'; break;
        case ListLevelUpdate_NumberStyleEnum.hebrew2: _result['NumberStyle'] = 'Hebrew2'; break;
        case ListLevelUpdate_NumberStyleEnum.arabic2: _result['NumberStyle'] = 'Arabic2'; break;
        case ListLevelUpdate_NumberStyleEnum.hindiLetter1: _result['NumberStyle'] = 'HindiLetter1'; break;
        case ListLevelUpdate_NumberStyleEnum.hindiLetter2: _result['NumberStyle'] = 'HindiLetter2'; break;
        case ListLevelUpdate_NumberStyleEnum.hindiArabic: _result['NumberStyle'] = 'HindiArabic'; break;
        case ListLevelUpdate_NumberStyleEnum.hindiCardinalText: _result['NumberStyle'] = 'HindiCardinalText'; break;
        case ListLevelUpdate_NumberStyleEnum.thaiLetter: _result['NumberStyle'] = 'ThaiLetter'; break;
        case ListLevelUpdate_NumberStyleEnum.thaiArabic: _result['NumberStyle'] = 'ThaiArabic'; break;
        case ListLevelUpdate_NumberStyleEnum.thaiCardinalText: _result['NumberStyle'] = 'ThaiCardinalText'; break;
        case ListLevelUpdate_NumberStyleEnum.vietCardinalText: _result['NumberStyle'] = 'VietCardinalText'; break;
        case ListLevelUpdate_NumberStyleEnum.numberInDash: _result['NumberStyle'] = 'NumberInDash'; break;
        case ListLevelUpdate_NumberStyleEnum.lowercaseRussian: _result['NumberStyle'] = 'LowercaseRussian'; break;
        case ListLevelUpdate_NumberStyleEnum.uppercaseRussian: _result['NumberStyle'] = 'UppercaseRussian'; break;
        case ListLevelUpdate_NumberStyleEnum.none: _result['NumberStyle'] = 'None'; break;
        case ListLevelUpdate_NumberStyleEnum.custom: _result['NumberStyle'] = 'Custom'; break;
        default: break;
      }
    }

    if (this.restartAfterLevel != null) {
      _result['RestartAfterLevel'] = this.restartAfterLevel;
    }

    if (this.startAt != null) {
      _result['StartAt'] = this.startAt;
    }

    if (this.tabPosition != null) {
      _result['TabPosition'] = this.tabPosition;
    }

    if (this.textPosition != null) {
      _result['TextPosition'] = this.textPosition;
    }

    if (this.trailingCharacter != null) {
      switch (this.trailingCharacter) {
        case ListLevelUpdate_TrailingCharacterEnum.tab: _result['TrailingCharacter'] = 'Tab'; break;
        case ListLevelUpdate_TrailingCharacterEnum.space: _result['TrailingCharacter'] = 'Space'; break;
        case ListLevelUpdate_TrailingCharacterEnum.nothing: _result['TrailingCharacter'] = 'Nothing'; break;
        default: break;
      }
    }
    return _result;
  }
}

/// Gets or sets the justification of the actual number of the list item.
enum ListLevelUpdate_AlignmentEnum
{ 
  left,
  center,
  right
}

/// Gets or sets returns or sets the number style for this list level.
enum ListLevelUpdate_NumberStyleEnum
{ 
  arabic,
  uppercaseRoman,
  lowercaseRoman,
  uppercaseLetter,
  lowercaseLetter,
  ordinal,
  number,
  ordinalText,
  hex,
  chicagoManual,
  kanji,
  kanjiDigit,
  aiueoHalfWidth,
  irohaHalfWidth,
  arabicFullWidth,
  arabicHalfWidth,
  kanjiTraditional,
  kanjiTraditional2,
  numberInCircle,
  decimalFullWidth,
  aiueo,
  iroha,
  leadingZero,
  bullet,
  ganada,
  chosung,
  gB1,
  gB2,
  gB3,
  gB4,
  zodiac1,
  zodiac2,
  zodiac3,
  tradChinNum1,
  tradChinNum2,
  tradChinNum3,
  tradChinNum4,
  simpChinNum1,
  simpChinNum2,
  simpChinNum3,
  simpChinNum4,
  hanjaRead,
  hanjaReadDigit,
  hangul,
  hanja,
  hebrew1,
  arabic1,
  hebrew2,
  arabic2,
  hindiLetter1,
  hindiLetter2,
  hindiArabic,
  hindiCardinalText,
  thaiLetter,
  thaiArabic,
  thaiCardinalText,
  vietCardinalText,
  numberInDash,
  lowercaseRussian,
  uppercaseRussian,
  none,
  custom
}

/// Gets or sets returns or sets the character inserted after the number for the list level.
enum ListLevelUpdate_TrailingCharacterEnum
{ 
  tab,
  space,
  nothing
}

