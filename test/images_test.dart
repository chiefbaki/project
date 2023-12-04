import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_application_1/resources/resources.dart';

void main() {
  test('images assets test', () {
    expect(File(Images.divSocialDecoration).existsSync(), isTrue);
    expect(File(Images.divSocialDecoration2).existsSync(), isTrue);
    expect(File(Images.divSocialDecoration3).existsSync(), isTrue);
    expect(File(Images.divSocialDecoration4).existsSync(), isTrue);
    expect(File(Images.divSocialDecoration5).existsSync(), isTrue);
  });
}
