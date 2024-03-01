class APILinks {
  static const String _server =
      "https://HOST/myecommerce/user"; // host domain here
  // Auth
  static const String signUp = "$_server/auth/signup.php";
  static const String verifyCode = "$_server/auth/verifycode.php";
  static const String verifyCodeResetPassword =
      "$_server/auth/verifycodeResetPassword.php";
  static const String resendCode = "$_server/auth/resend.php";
  static const String login = "$_server/auth/login.php";
  static const String resetPassword = "$_server/auth/resetpassword.php";
}
