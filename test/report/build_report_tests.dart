/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="build_report_tests.dart">
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

/// Example of how to perform mail merge.
class BuildReportTests
{
  final TestContext context;
  String remoteDataFolder;
  String reportingFolder;

  BuildReportTests(final this.context) {
    remoteDataFolder = context.remoteBaseTestDataFolder + '/DocumentActions/Reporting';
    reportingFolder = 'DocumentActions/Reporting';
  }

  /// Test for build report online.
  Future<void> testBuildReportOnline() async
  {
    final localDocumentFile = 'ReportTemplate.docx';
    final localDataFile = await context.loadTextFile(reportingFolder + '/ReportData.json');
    var requestReportEngineSettings = ReportEngineSettings();
    requestReportEngineSettings.dataSourceType = ReportEngineSettings_DataSourceTypeEnum.json;
    requestReportEngineSettings.dataSourceName = 'persons';

    final request = BuildReportOnlineRequest(
      await context.loadBinaryFile(reportingFolder + '/' + localDocumentFile),
      localDataFile,
      requestReportEngineSettings
    );

    await context.getApi().buildReportOnline(request);
  }

  /// Test for build report.
  Future<void> testBuildReport() async
  {
    final localDocumentFile = 'ReportTemplate.docx';
    final remoteFileName = 'TestBuildReport.docx';
    final localDataFile = await context.loadTextFile(reportingFolder + '/ReportData.json');
    await context.uploadFile(reportingFolder + '/' + localDocumentFile, remoteDataFolder + '/' + remoteFileName);
    var requestReportEngineSettingsReportBuildOptions = [
      ReportBuildOptionsEnum.allowMissingMembers,
    ReportBuildOptionsEnum.removeEmptyParagraphs];

    var requestReportEngineSettings = ReportEngineSettings();
    requestReportEngineSettings.dataSourceType = ReportEngineSettings_DataSourceTypeEnum.json;
    requestReportEngineSettings.reportBuildOptions = requestReportEngineSettingsReportBuildOptions;

    final request = BuildReportRequest(
      remoteFileName,
      localDataFile,
      requestReportEngineSettings,
      folder: remoteDataFolder
    );

    await context.getApi().buildReport(request);
  }
}
