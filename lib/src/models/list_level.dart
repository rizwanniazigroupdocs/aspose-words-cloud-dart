/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="list_level.dart">
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
class ListLevel extends LinkElement {
  /// Gets or sets the justification of the actual number of the list item.
  ListLevel_AlignmentEnum alignment;

  /// Gets or sets specifies character formatting used for the list label.
  Font font;

  /// Gets or sets a value indicating whether true if the level turns all inherited numbers to Arabic, false if it preserves
  /// their number style.
  bool isLegal;

  /// Gets or sets the paragraph style that is linked to this list level.
  Style linkedStyle;

  /// Gets or sets returns or sets the number format for the list level.
  String numberFormat;

  /// Gets or sets returns or sets the position (in points) of the number or bullet for the list
  /// level.
  double numberPosition;

  /// Gets or sets returns or sets the number style for this list level.
  ListLevel_NumberStyleEnum numberStyle;

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
  ListLevel_TrailingCharacterEnum trailingCharacter;

  @override
  void deserialize(Map<String, dynamic> json) {
    super.deserialize(json);
    if (json.containsKey('Alignment')) {
      switch (json['Alignment']) {
        case 'Left': alignment = ListLevel_AlignmentEnum.left; break;
        case 'Center': alignment = ListLevel_AlignmentEnum.center; break;
        case 'Right': alignment = ListLevel_AlignmentEnum.right; break;
        default: alignment = null; break;
      }
    } else {
      alignment = null;
    }

    if (json.containsKey('Font')) {
      font = Font();
      font.deserialize(json['Font']);
    } else {
      font = null;
    }

    if (json.containsKey('IsLegal')) {
      isLegal = json['IsLegal'];
    } else {
      isLegal = null;
    }

    if (json.containsKey('LinkedStyle')) {
      linkedStyle = Style();
      linkedStyle.deserialize(json['LinkedStyle']);
    } else {
      linkedStyle = null;
    }

    if (json.containsKey('NumberFormat')) {
      numberFormat = json['NumberFormat'];
    } else {
      numberFormat = null;
    }

    if (json.containsKey('NumberPosition')) {
      numberPosition = json['NumberPosition'];
    } else {
      numberPosition = null;
    }

    if (json.containsKey('NumberStyle')) {
      switch (json['NumberStyle']) {
        case 'Arabic': numberStyle = ListLevel_NumberStyleEnum.arabic; break;
        case 'UppercaseRoman': numberStyle = ListLevel_NumberStyleEnum.uppercaseRoman; break;
        case 'LowercaseRoman': numberStyle = ListLevel_NumberStyleEnum.lowercaseRoman; break;
        case 'UppercaseLetter': numberStyle = ListLevel_NumberStyleEnum.uppercaseLetter; break;
        case 'LowercaseLetter': numberStyle = ListLevel_NumberStyleEnum.lowercaseLetter; break;
        case 'Ordinal': numberStyle = ListLevel_NumberStyleEnum.ordinal; break;
        case 'Number': numberStyle = ListLevel_NumberStyleEnum.number; break;
        case 'OrdinalText': numberStyle = ListLevel_NumberStyleEnum.ordinalText; break;
        case 'Hex': numberStyle = ListLevel_NumberStyleEnum.hex; break;
        case 'ChicagoManual': numberStyle = ListLevel_NumberStyleEnum.chicagoManual; break;
        case 'Kanji': numberStyle = ListLevel_NumberStyleEnum.kanji; break;
        case 'KanjiDigit': numberStyle = ListLevel_NumberStyleEnum.kanjiDigit; break;
        case 'AiueoHalfWidth': numberStyle = ListLevel_NumberStyleEnum.aiueoHalfWidth; break;
        case 'IrohaHalfWidth': numberStyle = ListLevel_NumberStyleEnum.irohaHalfWidth; break;
        case 'ArabicFullWidth': numberStyle = ListLevel_NumberStyleEnum.arabicFullWidth; break;
        case 'ArabicHalfWidth': numberStyle = ListLevel_NumberStyleEnum.arabicHalfWidth; break;
        case 'KanjiTraditional': numberStyle = ListLevel_NumberStyleEnum.kanjiTraditional; break;
        case 'KanjiTraditional2': numberStyle = ListLevel_NumberStyleEnum.kanjiTraditional2; break;
        case 'NumberInCircle': numberStyle = ListLevel_NumberStyleEnum.numberInCircle; break;
        case 'DecimalFullWidth': numberStyle = ListLevel_NumberStyleEnum.decimalFullWidth; break;
        case 'Aiueo': numberStyle = ListLevel_NumberStyleEnum.aiueo; break;
        case 'Iroha': numberStyle = ListLevel_NumberStyleEnum.iroha; break;
        case 'LeadingZero': numberStyle = ListLevel_NumberStyleEnum.leadingZero; break;
        case 'Bullet': numberStyle = ListLevel_NumberStyleEnum.bullet; break;
        case 'Ganada': numberStyle = ListLevel_NumberStyleEnum.ganada; break;
        case 'Chosung': numberStyle = ListLevel_NumberStyleEnum.chosung; break;
        case 'GB1': numberStyle = ListLevel_NumberStyleEnum.gB1; break;
        case 'GB2': numberStyle = ListLevel_NumberStyleEnum.gB2; break;
        case 'GB3': numberStyle = ListLevel_NumberStyleEnum.gB3; break;
        case 'GB4': numberStyle = ListLevel_NumberStyleEnum.gB4; break;
        case 'Zodiac1': numberStyle = ListLevel_NumberStyleEnum.zodiac1; break;
        case 'Zodiac2': numberStyle = ListLevel_NumberStyleEnum.zodiac2; break;
        case 'Zodiac3': numberStyle = ListLevel_NumberStyleEnum.zodiac3; break;
        case 'TradChinNum1': numberStyle = ListLevel_NumberStyleEnum.tradChinNum1; break;
        case 'TradChinNum2': numberStyle = ListLevel_NumberStyleEnum.tradChinNum2; break;
        case 'TradChinNum3': numberStyle = ListLevel_NumberStyleEnum.tradChinNum3; break;
        case 'TradChinNum4': numberStyle = ListLevel_NumberStyleEnum.tradChinNum4; break;
        case 'SimpChinNum1': numberStyle = ListLevel_NumberStyleEnum.simpChinNum1; break;
        case 'SimpChinNum2': numberStyle = ListLevel_NumberStyleEnum.simpChinNum2; break;
        case 'SimpChinNum3': numberStyle = ListLevel_NumberStyleEnum.simpChinNum3; break;
        case 'SimpChinNum4': numberStyle = ListLevel_NumberStyleEnum.simpChinNum4; break;
        case 'HanjaRead': numberStyle = ListLevel_NumberStyleEnum.hanjaRead; break;
        case 'HanjaReadDigit': numberStyle = ListLevel_NumberStyleEnum.hanjaReadDigit; break;
        case 'Hangul': numberStyle = ListLevel_NumberStyleEnum.hangul; break;
        case 'Hanja': numberStyle = ListLevel_NumberStyleEnum.hanja; break;
        case 'Hebrew1': numberStyle = ListLevel_NumberStyleEnum.hebrew1; break;
        case 'Arabic1': numberStyle = ListLevel_NumberStyleEnum.arabic1; break;
        case 'Hebrew2': numberStyle = ListLevel_NumberStyleEnum.hebrew2; break;
        case 'Arabic2': numberStyle = ListLevel_NumberStyleEnum.arabic2; break;
        case 'HindiLetter1': numberStyle = ListLevel_NumberStyleEnum.hindiLetter1; break;
        case 'HindiLetter2': numberStyle = ListLevel_NumberStyleEnum.hindiLetter2; break;
        case 'HindiArabic': numberStyle = ListLevel_NumberStyleEnum.hindiArabic; break;
        case 'HindiCardinalText': numberStyle = ListLevel_NumberStyleEnum.hindiCardinalText; break;
        case 'ThaiLetter': numberStyle = ListLevel_NumberStyleEnum.thaiLetter; break;
        case 'ThaiArabic': numberStyle = ListLevel_NumberStyleEnum.thaiArabic; break;
        case 'ThaiCardinalText': numberStyle = ListLevel_NumberStyleEnum.thaiCardinalText; break;
        case 'VietCardinalText': numberStyle = ListLevel_NumberStyleEnum.vietCardinalText; break;
        case 'NumberInDash': numberStyle = ListLevel_NumberStyleEnum.numberInDash; break;
        case 'LowercaseRussian': numberStyle = ListLevel_NumberStyleEnum.lowercaseRussian; break;
        case 'UppercaseRussian': numberStyle = ListLevel_NumberStyleEnum.uppercaseRussian; break;
        case 'None': numberStyle = ListLevel_NumberStyleEnum.none; break;
        case 'Custom': numberStyle = ListLevel_NumberStyleEnum.custom; break;
        default: numberStyle = null; break;
      }
    } else {
      numberStyle = null;
    }

    if (json.containsKey('RestartAfterLevel')) {
      restartAfterLevel = json['RestartAfterLevel'];
    } else {
      restartAfterLevel = null;
    }

    if (json.containsKey('StartAt')) {
      startAt = json['StartAt'];
    } else {
      startAt = null;
    }

    if (json.containsKey('TabPosition')) {
      tabPosition = json['TabPosition'];
    } else {
      tabPosition = null;
    }

    if (json.containsKey('TextPosition')) {
      textPosition = json['TextPosition'];
    } else {
      textPosition = null;
    }

    if (json.containsKey('TrailingCharacter')) {
      switch (json['TrailingCharacter']) {
        case 'Tab': trailingCharacter = ListLevel_TrailingCharacterEnum.tab; break;
        case 'Space': trailingCharacter = ListLevel_TrailingCharacterEnum.space; break;
        case 'Nothing': trailingCharacter = ListLevel_TrailingCharacterEnum.nothing; break;
        default: trailingCharacter = null; break;
      }
    } else {
      trailingCharacter = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (alignment != null) {
      switch (alignment) {
        case ListLevel_AlignmentEnum.left: _result['Alignment'] = 'Left'; break;
        case ListLevel_AlignmentEnum.center: _result['Alignment'] = 'Center'; break;
        case ListLevel_AlignmentEnum.right: _result['Alignment'] = 'Right'; break;
        default: break;
      }
    }

    if (font != null) {
      _result['Font'] = font.serialize();
    }

    if (isLegal != null) {
      _result['IsLegal'] = isLegal;
    }

    if (linkedStyle != null) {
      _result['LinkedStyle'] = linkedStyle.serialize();
    }

    if (numberFormat != null) {
      _result['NumberFormat'] = numberFormat;
    }

    if (numberPosition != null) {
      _result['NumberPosition'] = numberPosition;
    }

    if (numberStyle != null) {
      switch (numberStyle) {
        case ListLevel_NumberStyleEnum.arabic: _result['NumberStyle'] = 'Arabic'; break;
        case ListLevel_NumberStyleEnum.uppercaseRoman: _result['NumberStyle'] = 'UppercaseRoman'; break;
        case ListLevel_NumberStyleEnum.lowercaseRoman: _result['NumberStyle'] = 'LowercaseRoman'; break;
        case ListLevel_NumberStyleEnum.uppercaseLetter: _result['NumberStyle'] = 'UppercaseLetter'; break;
        case ListLevel_NumberStyleEnum.lowercaseLetter: _result['NumberStyle'] = 'LowercaseLetter'; break;
        case ListLevel_NumberStyleEnum.ordinal: _result['NumberStyle'] = 'Ordinal'; break;
        case ListLevel_NumberStyleEnum.number: _result['NumberStyle'] = 'Number'; break;
        case ListLevel_NumberStyleEnum.ordinalText: _result['NumberStyle'] = 'OrdinalText'; break;
        case ListLevel_NumberStyleEnum.hex: _result['NumberStyle'] = 'Hex'; break;
        case ListLevel_NumberStyleEnum.chicagoManual: _result['NumberStyle'] = 'ChicagoManual'; break;
        case ListLevel_NumberStyleEnum.kanji: _result['NumberStyle'] = 'Kanji'; break;
        case ListLevel_NumberStyleEnum.kanjiDigit: _result['NumberStyle'] = 'KanjiDigit'; break;
        case ListLevel_NumberStyleEnum.aiueoHalfWidth: _result['NumberStyle'] = 'AiueoHalfWidth'; break;
        case ListLevel_NumberStyleEnum.irohaHalfWidth: _result['NumberStyle'] = 'IrohaHalfWidth'; break;
        case ListLevel_NumberStyleEnum.arabicFullWidth: _result['NumberStyle'] = 'ArabicFullWidth'; break;
        case ListLevel_NumberStyleEnum.arabicHalfWidth: _result['NumberStyle'] = 'ArabicHalfWidth'; break;
        case ListLevel_NumberStyleEnum.kanjiTraditional: _result['NumberStyle'] = 'KanjiTraditional'; break;
        case ListLevel_NumberStyleEnum.kanjiTraditional2: _result['NumberStyle'] = 'KanjiTraditional2'; break;
        case ListLevel_NumberStyleEnum.numberInCircle: _result['NumberStyle'] = 'NumberInCircle'; break;
        case ListLevel_NumberStyleEnum.decimalFullWidth: _result['NumberStyle'] = 'DecimalFullWidth'; break;
        case ListLevel_NumberStyleEnum.aiueo: _result['NumberStyle'] = 'Aiueo'; break;
        case ListLevel_NumberStyleEnum.iroha: _result['NumberStyle'] = 'Iroha'; break;
        case ListLevel_NumberStyleEnum.leadingZero: _result['NumberStyle'] = 'LeadingZero'; break;
        case ListLevel_NumberStyleEnum.bullet: _result['NumberStyle'] = 'Bullet'; break;
        case ListLevel_NumberStyleEnum.ganada: _result['NumberStyle'] = 'Ganada'; break;
        case ListLevel_NumberStyleEnum.chosung: _result['NumberStyle'] = 'Chosung'; break;
        case ListLevel_NumberStyleEnum.gB1: _result['NumberStyle'] = 'GB1'; break;
        case ListLevel_NumberStyleEnum.gB2: _result['NumberStyle'] = 'GB2'; break;
        case ListLevel_NumberStyleEnum.gB3: _result['NumberStyle'] = 'GB3'; break;
        case ListLevel_NumberStyleEnum.gB4: _result['NumberStyle'] = 'GB4'; break;
        case ListLevel_NumberStyleEnum.zodiac1: _result['NumberStyle'] = 'Zodiac1'; break;
        case ListLevel_NumberStyleEnum.zodiac2: _result['NumberStyle'] = 'Zodiac2'; break;
        case ListLevel_NumberStyleEnum.zodiac3: _result['NumberStyle'] = 'Zodiac3'; break;
        case ListLevel_NumberStyleEnum.tradChinNum1: _result['NumberStyle'] = 'TradChinNum1'; break;
        case ListLevel_NumberStyleEnum.tradChinNum2: _result['NumberStyle'] = 'TradChinNum2'; break;
        case ListLevel_NumberStyleEnum.tradChinNum3: _result['NumberStyle'] = 'TradChinNum3'; break;
        case ListLevel_NumberStyleEnum.tradChinNum4: _result['NumberStyle'] = 'TradChinNum4'; break;
        case ListLevel_NumberStyleEnum.simpChinNum1: _result['NumberStyle'] = 'SimpChinNum1'; break;
        case ListLevel_NumberStyleEnum.simpChinNum2: _result['NumberStyle'] = 'SimpChinNum2'; break;
        case ListLevel_NumberStyleEnum.simpChinNum3: _result['NumberStyle'] = 'SimpChinNum3'; break;
        case ListLevel_NumberStyleEnum.simpChinNum4: _result['NumberStyle'] = 'SimpChinNum4'; break;
        case ListLevel_NumberStyleEnum.hanjaRead: _result['NumberStyle'] = 'HanjaRead'; break;
        case ListLevel_NumberStyleEnum.hanjaReadDigit: _result['NumberStyle'] = 'HanjaReadDigit'; break;
        case ListLevel_NumberStyleEnum.hangul: _result['NumberStyle'] = 'Hangul'; break;
        case ListLevel_NumberStyleEnum.hanja: _result['NumberStyle'] = 'Hanja'; break;
        case ListLevel_NumberStyleEnum.hebrew1: _result['NumberStyle'] = 'Hebrew1'; break;
        case ListLevel_NumberStyleEnum.arabic1: _result['NumberStyle'] = 'Arabic1'; break;
        case ListLevel_NumberStyleEnum.hebrew2: _result['NumberStyle'] = 'Hebrew2'; break;
        case ListLevel_NumberStyleEnum.arabic2: _result['NumberStyle'] = 'Arabic2'; break;
        case ListLevel_NumberStyleEnum.hindiLetter1: _result['NumberStyle'] = 'HindiLetter1'; break;
        case ListLevel_NumberStyleEnum.hindiLetter2: _result['NumberStyle'] = 'HindiLetter2'; break;
        case ListLevel_NumberStyleEnum.hindiArabic: _result['NumberStyle'] = 'HindiArabic'; break;
        case ListLevel_NumberStyleEnum.hindiCardinalText: _result['NumberStyle'] = 'HindiCardinalText'; break;
        case ListLevel_NumberStyleEnum.thaiLetter: _result['NumberStyle'] = 'ThaiLetter'; break;
        case ListLevel_NumberStyleEnum.thaiArabic: _result['NumberStyle'] = 'ThaiArabic'; break;
        case ListLevel_NumberStyleEnum.thaiCardinalText: _result['NumberStyle'] = 'ThaiCardinalText'; break;
        case ListLevel_NumberStyleEnum.vietCardinalText: _result['NumberStyle'] = 'VietCardinalText'; break;
        case ListLevel_NumberStyleEnum.numberInDash: _result['NumberStyle'] = 'NumberInDash'; break;
        case ListLevel_NumberStyleEnum.lowercaseRussian: _result['NumberStyle'] = 'LowercaseRussian'; break;
        case ListLevel_NumberStyleEnum.uppercaseRussian: _result['NumberStyle'] = 'UppercaseRussian'; break;
        case ListLevel_NumberStyleEnum.none: _result['NumberStyle'] = 'None'; break;
        case ListLevel_NumberStyleEnum.custom: _result['NumberStyle'] = 'Custom'; break;
        default: break;
      }
    }

    if (restartAfterLevel != null) {
      _result['RestartAfterLevel'] = restartAfterLevel;
    }

    if (startAt != null) {
      _result['StartAt'] = startAt;
    }

    if (tabPosition != null) {
      _result['TabPosition'] = tabPosition;
    }

    if (textPosition != null) {
      _result['TextPosition'] = textPosition;
    }

    if (trailingCharacter != null) {
      switch (trailingCharacter) {
        case ListLevel_TrailingCharacterEnum.tab: _result['TrailingCharacter'] = 'Tab'; break;
        case ListLevel_TrailingCharacterEnum.space: _result['TrailingCharacter'] = 'Space'; break;
        case ListLevel_TrailingCharacterEnum.nothing: _result['TrailingCharacter'] = 'Nothing'; break;
        default: break;
      }
    }
    return _result;
  }
}

/// Gets or sets the justification of the actual number of the list item.
enum ListLevel_AlignmentEnum
{ 
  left,
  center,
  right
}

/// Gets or sets returns or sets the number style for this list level.
enum ListLevel_NumberStyleEnum
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
enum ListLevel_TrailingCharacterEnum
{ 
  tab,
  space,
  nothing
}

