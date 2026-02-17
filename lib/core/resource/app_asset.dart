class AppAsset {
  AppAsset._internal();
  static final AppAsset _instance = AppAsset._internal();

  factory AppAsset() {
    return _instance;
  }

  static const String appIcon = 'assets/icons/';
  static const String appImages = 'assets/images/';

  static const String applogo = '${appImages}onboarding.png';
  static const String loginIcon = '${appIcon}login_icon.svg';
  static const String signupIcon = '${appIcon}signup_icon.svg';
  static const String passwordIcon = '${appIcon}password_success.svg';

  static const String back = 'assets/icons/back.svg';
  static const String eye = 'assets/icons/eye.svg';
  static const String eyeOff = 'assets/icons/eye_off.svg';
  static const String image = 'assets/icons/image.svg';
}
