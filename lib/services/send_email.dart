import 'dart:convert';
import 'dart:math';

import 'package:http/http.dart' as http;
import 'package:usa_in_ua/models/auth/domain/value_objects.dart';

class EmailSevice {
  Future sendEmail({
    required UserName userName,
    required EmailAddress emailAddress,
  }) async {
    final password = _generatePassword();
    final serviceId = 'service_nx4azh9';
    final templateId = 'template_eriji3u';
    final userId = 'user_YOJhnRRf7aMshOcYlAkwj';

    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'service_id': serviceId,
        'template_id': templateId,
        'user_id': userId,
        'template_params': {
          'user_name': userName,
          'user_email': emailAddress,
          'message': 'Your new account password: $password',
        }
      }),
    );
  }

  String _generatePassword({
    bool letter = true,
    bool isNumber = true,
    bool isSpecial = true,
  }) {
    final length = 20;
    final letterLowerCase = "abcdefghijklmnopqrstuvwxyz";
    final letterUpperCase = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    final number = '0123456789';
    final special = '@#%^*>\$@?/[]=+';

    String chars = "";
    if (letter) chars += '$letterLowerCase$letterUpperCase';
    if (isNumber) chars += '$number';
    if (isSpecial) chars += '$special';

    return List.generate(length, (index) {
      final indexRandom = Random.secure().nextInt(chars.length);
      return chars[indexRandom];
    }).join('');
  }
}
