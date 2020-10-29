```dart
// Import dependencies
import 'package:aspose_words_cloud/aspose_words_cloud.dart';
import 'dart:convert';
import 'dart:io';

// Configure words api client
var configuration = new Configuration('AppKey', 'AppSid');
var wordsApi = new WordsApi(configuration);

// Upload file to cloud
var localFileContent = await (new File('./test_data/Common/test_doc.docx').readAsBytes());
var uploadRequest = new UploadFileRequest(ByteData.view(localFileContent.buffer), 'fileStoredInCloud.docx');
await wordsApi.uploadFile(uploadRequest);

// Save file as pdf in cloud
var saveOptionsData = new SaveOptionsData()
  ..saveFormat = "pdf"
  ..fileName = "destStoredInCloud.pdf";
var saveAsRequest = new SaveAsRequest("fileStoredInCloud.docx", saveOptionsData);
await wordsApi.saveAs(saveAsRequest);
```