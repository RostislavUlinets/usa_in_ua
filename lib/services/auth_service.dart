import 'dart:convert';
import 'dart:math';

import 'package:usa_in_ua/database/firestore_data.dart';
import 'package:usa_in_ua/models/auth/domain/value_objects.dart';
import 'package:usa_in_ua/models/user/user.dart';
import 'package:http/http.dart' as http;

class AuthService {
  Future<void> generateUserData({
    required UserName userName,
    required EmailAddress emailAddress,
    required PhoneNumber phoneNumber,
  }) async {
    FireStoreDatabase database = FireStoreDatabase();
    String name = userName.getOrCrash();
    String email = emailAddress.getOrCrash();
    String phone = phoneNumber.getOrCrash();
    UserModel user = UserModel(
      uid: database.uid,
      name: name,
      email: email,
      phone: phone,
    );
    await database.addUser(user);
  }

  Future<void> sendEmail({
    required UserName userName,
    required EmailAddress emailAddress,
    required String password,
  }) async {
    String userNameStr = userName.getOrCrash();
    String emailAddressStr = emailAddress.getOrCrash();
    const serviceId = 'service_nx4azh9';
    const templateId = 'template_eriji3u';
    const userId = 'user_YOJhnRRf7aMshOcYlAkwj';

    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
    await http.post(
      url,
      headers: {
        'origin': 'http://localhost',
        'Content-Type': 'application/json',
      },
      body: json.encode(
        {
          'service_id': serviceId,
          'template_id': templateId,
          'user_id': userId,
          'template_params': {
            'user_name': userNameStr,
            'user_email': emailAddressStr,
            'message': password
          }
        },
      ),
    );
  }

  String generatePassword({
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
