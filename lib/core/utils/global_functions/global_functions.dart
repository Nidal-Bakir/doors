import 'dart:io' show Platform;

String extractLangCodeFromPlatformService() {
  // localeName could be (en) or (en_US) or (en_US.UTF-8)
  return Platform.localeName.split('_')[0];
}

String extractISOCountryCodeFromPlatformService() {
  // localeName could be (en) or (en_US) or (en_US.UTF-8)
  try {
    return Platform.localeName.split('_')[1].split('.')[0];
  } on RangeError {
    return 'US';
  }
}
