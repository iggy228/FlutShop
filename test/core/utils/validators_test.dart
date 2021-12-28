import 'package:flut_shop/src/core/utils/validators/email_validator.dart';
import 'package:flut_shop/src/core/utils/validators/password_validator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Validators test', () {
    String testEmail1 = '123@fa';
    String testEmail2 = 'jankoherasko';
    String testEmail5 = 'janko@hern asko.sk';
    String testEmail3 = 'fajl@fjkf.sk.dal';
    String testEmail4 = 'i.broovt@gmail.com';

    String password1 = '11111';
    String password2 = 'abcde1325fd';
    String password3 = 'ahoj    janko';
    String password4 = '@-123fa|';

    test('Email is null', () {
      expect(emailValidator(null), 'Email not entered');
    });

    test('Email is empty', () {
      expect(emailValidator(''), 'Email not entered');
    });

    test('Email test1', () {
      expect(emailValidator(testEmail1), 'Email wrong format');
    });

    test('Email test2', () {
      expect(emailValidator(testEmail2), 'Email wrong format');
    });

    test('Email test3', () {
      expect(emailValidator(testEmail3), null);
    });

    test('Email test4', () {
      expect(emailValidator(testEmail4), null);
    });

    test('Email test5', () {
      expect(emailValidator(testEmail5), 'Email wrong format');
    });

    // password tests
    test('Password is null', () {
      expect(passwordValidator(null), 'Password not entered');
    });

    test('Password is empty', () {
      expect(passwordValidator(''), 'Password not entered');
    });

    test('Password is short', () {
      expect(passwordValidator(password1), 'Password is short');
    });

    test('Password correct format', () {
      expect(passwordValidator(password2), null);
    });

    test('Password wrong format1', () {
      expect(
        passwordValidator(password3),
        'Password contains invalid characters',
      );
    });

    test('Password wrong format2', () {
      expect(
        passwordValidator(password4),
        'Password contains invalid characters',
      );
    });
  });
}
