// Copyright 2019, the Chromium project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter_test/flutter_test.dart';
import 'package:e2e/e2e.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  E2EWidgetsFlutterBinding.ensureInitialized();

  test('canLaunch', () async {
    expect(await canLaunch('randomstring'), false);

    // Generally all devices should have some default browser.
    expect(await canLaunch('http://flutter.dev'), true);

    // Desktop will not necessarily support sms:.

    // tel: and mailto: links may not be openable on every device. iOS
    // simulators notably can't open these link types.
  });
}
