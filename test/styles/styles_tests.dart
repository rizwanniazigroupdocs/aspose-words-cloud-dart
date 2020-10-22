/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="styles_tests.dart">
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

import 'package:aspose_words_cloud/aspose_words_cloud.dart';
import '../test_context.dart';
import 'package:test/test.dart';

/// Example of how to work with styles.
class StylesTests
{
  final TestContext context;
  String remoteDataFolder;
  String localFile;

  StylesTests(final TestContext this.context) {
    remoteDataFolder = this.context.remoteBaseTestDataFolder + '/DocumentElements/Styles';
    localFile = 'DocumentElements/Styles/GetStyles.docx';
  }

  void runAll() async {
    await test('Styles.GetStyles', () async => await this.testGetStyles());
    await test('Styles.GetStyle', () async => await this.testGetStyle());
    await test('Styles.UpdateStyle', () async => await this.testUpdateStyle());
    await test('Styles.InsertStyle', () async => await this.testInsertStyle());
    await test('Styles.CopyStyle', () async => await this.testCopyStyle());
    await test('Styles.GetStyleFromDocumentElement', () async => await this.testGetStyleFromDocumentElement());
    await test('Styles.ApplyStyleToDocumentElement', () async => await this.testApplyStyleToDocumentElement());
  }

  /// Test for getting styles from document.
  void testGetStyles() async
  {
    final String remoteFileName = 'TestGetStyles.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new GetStylesRequest(
      remoteFileName,
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().getStyles(request);
  }

  /// Test for getting style from document.
  void testGetStyle() async
  {
    final String remoteFileName = 'TestGetStyle.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new GetStyleRequest(
      remoteFileName,
      'Heading 1',
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().getStyle(request);
  }

  /// Test for updating style from document.
  void testUpdateStyle() async
  {
    final String remoteFileName = 'TestUpdateStyle.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    var requestStyleUpdate = new StyleUpdate();
    requestStyleUpdate.name = 'My Style';

    final request = new UpdateStyleRequest(
      remoteFileName,
      requestStyleUpdate,
      'Heading 1',
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().updateStyle(request);
  }

  /// Test for inserting style from document.
  void testInsertStyle() async
  {
    final String remoteFileName = 'TestInsertStyle.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    var requestStyleInsert = new StyleInsert();
    requestStyleInsert.styleName = 'My Style';
    requestStyleInsert.styleType = StyleInsert_StyleTypeEnum.paragraph;

    final request = new InsertStyleRequest(
      remoteFileName,
      requestStyleInsert,
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().insertStyle(request);
  }

  /// Test for coping style from document.
  void testCopyStyle() async
  {
    final String remoteFileName = 'TestCopyStyle.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    var requestStyleCopy = new StyleCopy();
    requestStyleCopy.styleName = 'Heading 1';

    final request = new CopyStyleRequest(
      remoteFileName,
      requestStyleCopy,
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().copyStyle(request);
  }

  /// Test for getting style from document element.
  void testGetStyleFromDocumentElement() async
  {
    final String remoteFileName = 'TestGetStyleFromDocumentElement.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new GetStyleFromDocumentElementRequest(
      remoteFileName,
      'paragraphs/1/paragraphFormat',
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().getStyleFromDocumentElement(request);
  }

  /// Test for applying style to document element.
  void testApplyStyleToDocumentElement() async
  {
    final String remoteFileName = 'TestApplyStyleToDocumentElement.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    var requestStyleApply = new StyleApply();
    requestStyleApply.styleName = 'Heading 1';

    final request = new ApplyStyleToDocumentElementRequest(
      remoteFileName,
      requestStyleApply,
      'paragraphs/1/paragraphFormat',
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().applyStyleToDocumentElement(request);
  }
}
