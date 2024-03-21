import 'dart:convert';
import 'package:apidash/utils/har_utils.dart';
import 'package:apidash/utils/http_utils.dart';
import 'package:jinja/jinja.dart' as jj;
import 'package:apidash/models/models.dart' show RequestModel;
import 'package:apidash/consts.dart';

class JavaUnirestGen {
  final String kTemplateUnirestImports = '''
import kong.unirest.core.*;\n
''';

  final String kTemplateFileIoImports = '''
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;\n
''';
  final String kTemplateStart = '''
public class Main {
    public static void main(String[] args) {
''';

  final String kTemplateUrl = '''
        final String requestURL = "{{url}}";\n
''';

  final String kTemplateRequestBodyContent = '''
        final String requestBody = "{{body}}";\n
''';

  final String kTemplateRequestCreation = '''
        HttpResponse<JsonNode> response = Unirest
                .{{method}}(requestURL)\n
''';

  final String kTemplateRequestHeader = '''
                .header("{{name}}", "{{value}}")\n
''';

  final String kTemplateContentType = '''
                .contentType("{{contentType}}")\n
''';

  final String kTemplateUrlQueryParam = '''
                .queryString("{{name}}", "{{value}}")\n
''';

  final String kTemplateRequestTextFormData = '''
                .field("{{name}}", "{{value}}")\n
''';

  final String kTemplateRequestFileFormData = '''
                .field("{{name}}", new File("{{value}}"))\n
''';

  final String kTemplateRequestBodySetup = '''
                .body(requestBody)\n
''';

  final String kTemplateBoundarySetup = '''
                .boundary("{{boundary}}")\n
''';

  final String kTemplateRequestEnd = """
                .asJson();
        System.out.println(response.getStatus());
        System.out.println(response.getBody());
    }
}\n
""";

  String? getCode(RequestModel requestModel, String? boundary) {
    try {
      String result = '';
      bool hasBody = false;

      return result;
    } catch (e) {
      return null;
    }
  }
}
