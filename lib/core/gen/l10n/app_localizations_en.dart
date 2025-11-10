// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get english => 'English';

  @override
  String get bangla => 'বাংলা';

  @override
  String get arabic => 'العربية';

  @override
  String get home => 'Home';

  @override
  String get account => 'Account';

  @override
  String get category => 'Category';

  @override
  String get favourite => 'Wishlist';

  @override
  String get profile => 'Profile';

  @override
  String get login => 'Login';

  @override
  String get createNewPassword => 'Create New password';

  @override
  String get createNewPasswordHint =>
      'Your new password must be different from previous used passwords.';

  @override
  String get resetPassword => 'Reset Password';

  @override
  String get newPassword => 'New Password';

  @override
  String get passwordChangeSuccess => 'Password Changed Successfully';

  @override
  String get emailRequired => 'Email is required';

  @override
  String get passwordRequired => 'Password is required';

  @override
  String get isRequired => 'This field is required';

  @override
  String get validEmail => 'Please enter valid email address';

  @override
  String get enterAssociatedEmail =>
      'Enter the email associated with your account and we’ll send an email with instructions to reset your password.';

  @override
  String minLengthValidation(int min) {
    return 'This field must be at least $min characters long';
  }

  @override
  String maxLengthValidation(int max) {
    return 'This field must be at most $max characters long';
  }

  @override
  String get yourPasswordChanged =>
      'Your password has been changed successfully.';

  @override
  String get confirmPassword => 'Confirm Password';

  @override
  String get logout => 'Logout';

  @override
  String get getStarted => 'Get Started';

  @override
  String get rememberMe => 'Remember me';

  @override
  String get forgotPassword => 'Forgot password';

  @override
  String get backToLogin => 'Back to login';

  @override
  String get continueAction => 'Continue';

  @override
  String get signUp => 'Sign up';

  @override
  String get signIn => 'Sign in';

  @override
  String get createAccount => 'Create Account';

  @override
  String get email => 'Email';

  @override
  String get emailAddress => 'Email Address';

  @override
  String get password => 'Password';

  @override
  String get firstName => 'First Name';

  @override
  String get lastName => 'Last Name';

  @override
  String get dontHaveAccount => 'Don\'t have an account? ';

  @override
  String get alreadyHaveAccount => 'Already have an account? ';

  @override
  String get checkYourMail => 'Check your mail';

  @override
  String get enterVerificationCode =>
      'Please enter 4 digit code sent to your mail hello**@gmail.com.';

  @override
  String get didntGetCode => 'Didn\'t get a code? ';

  @override
  String get clickToResend => 'Click to resend';

  @override
  String get didNotReceiveEmail =>
      'Did not receive the email? Check your spam filter. or ';

  @override
  String get tryAnotherEmail => 'try another email address';

  @override
  String get learnFlutterTitle => 'Learn Flutter with comprehensive tutorials.';

  @override
  String get learnFlutterSubtitle =>
      'Step-by-step guides for building Flutter apps.';

  @override
  String get learnFlutterDescription =>
      'Get notifications for new tutorials and updates.';

  @override
  String get joinCommunityTitle => 'Join the Flutter community.';

  @override
  String get joinCommunitySubtitle => 'Connect with other Flutter developers.';

  @override
  String get joinCommunityDescription =>
      'Participate in community events and discussions.';

  @override
  String get buildDeployTitle => 'Build and deploy Flutter apps easily.';

  @override
  String get buildDeploySubtitle =>
      'Access tools and resources for app development.';

  @override
  String get buildDeployDescription =>
      'Deploy your apps to multiple platforms with ease.';

  @override
  String passwordMinLengthValidation(String minLength) {
    return 'Password must be at least $minLength characters';
  }

  @override
  String get passwordNumberValidation =>
      'Password must contain at least one number';

  @override
  String get passwordLowerCaseValidation =>
      'Password must contain at least one lowercase letter';

  @override
  String get passwordUpperCaseValidation =>
      'Password must contain at least one uppercase letter';

  @override
  String get passwordSpecialCharValidation =>
      'Password must contain at least one special character';

  @override
  String get off => 'Off';

  @override
  String get shopNow => 'Shop Now';

  @override
  String get addToCart => 'Add To Cart';

  @override
  String get bestDeals => 'Best Deals';

  @override
  String get newArrivals => 'New Arrivals';

  @override
  String get featuredProducts => 'Featured Products';

  @override
  String get topBrands => 'Top Brands';

  @override
  String get search => 'Search';

  @override
  String get selectColor => 'Select Color:';

  @override
  String get variant => 'Variant:';

  @override
  String get deliveryTimeScale => 'Delivery Timescale:';

  @override
  String get description => 'Description';

  @override
  String get detail => 'Details';

  @override
  String get review => 'Review';

  @override
  String get cart => 'Cart';

  @override
  String get orderSummary => 'Order Summary';

  @override
  String get promoCode => 'Promo Code';

  @override
  String get apply => 'Apply';

  @override
  String get subTotal => 'Sub Total';

  @override
  String get shipping => 'Shipping';

  @override
  String get tax => 'Tax';

  @override
  String get totalAmount => 'Total Amount';

  @override
  String get checkout => 'Checkout';

  @override
  String get checkoutAndConfirmOrder => 'Checkout & Confirm Order';

  @override
  String get confirmOrder => 'Confirm Order';

  @override
  String get deliveryInformation => 'Delivery Information';

  @override
  String get addNew => 'Add New';

  @override
  String get paymentType => 'Payment Type';

  @override
  String get cashOnDelivery => 'Cash On Delivery';

  @override
  String get onlinePayment => 'Online Payment';

  @override
  String get paymentMethod => 'Payment Method';

  @override
  String get itemList => 'Item List';

  @override
  String get name => 'Name';

  @override
  String get phone => 'Phone';

  @override
  String get address => 'Address';

  @override
  String get addNewAddress => 'Add New Address';

  @override
  String get phoneNumber => 'Phone Number';

  @override
  String get state => 'State';

  @override
  String get city => 'City';

  @override
  String get zipCode => 'ZIP Code';

  @override
  String get save => 'Save';

  @override
  String get editAddress => 'Edit Address';

  @override
  String get filter => 'Filter';

  @override
  String get sort => 'Sort';

  @override
  String get resultFound => 'results found';

  @override
  String get order => 'Order';

  @override
  String get wishList => 'Wishlist';

  @override
  String get coupons => 'Coupons';

  @override
  String get addresses => 'Addresses';

  @override
  String get changePassword => 'Change Password';

  @override
  String get copy => 'Copy';

  @override
  String get code => 'Code';

  @override
  String get currentPassword => 'Current Password';

  @override
  String get recentSearch => 'Recent Search';

  @override
  String get recentlyViewed => 'Recently viewed';

  @override
  String get orderId => 'Order ID';

  @override
  String get completed => 'Completed';

  @override
  String get pending => 'Pending';

  @override
  String get viewDetails => 'View Details';

  @override
  String get total => 'Total';

  @override
  String get orderDetail => 'Order Details';

  @override
  String get orderConfirmation => 'Order Confirmation';

  @override
  String get createOrder => 'Order Created';

  @override
  String get orderProcessing => 'Order Processing';

  @override
  String get customerPayment => 'Customer Payment';

  @override
  String get onDelivery => 'On Delivery';

  @override
  String get orderCompleted => 'Order Completed';

  @override
  String get cancelOrder => 'Cancel Order';

  @override
  String get exploreMore => 'Explore More';

  @override
  String get editAccount => 'Edit Account';

  @override
  String get exploreTheApp => 'Explore The App';

  @override
  String get loginPageMessage =>
      'Now your E-commerce are in one place and always under control';

  @override
  String get acceptTerm => 'I accept terms and privacy policy';

  @override
  String get sendCode => 'Send Code';

  @override
  String get verify => 'Verify';

  @override
  String get weveSendACodeTo => 'We\'ve send a code to';

  @override
  String get sendCodeAgain => 'Send code again';

  @override
  String get pleaseCheckYourEmail => 'Please check your email';

  @override
  String get orLoginWith => 'or login with';

  @override
  String get forgotPasswordInfo =>
      'Don’t worry! It happens. Please enter the email associated with your account.';

  @override
  String get resetPasswordInfo => 'Please type something you’ll remember';

  @override
  String get passwordChanged => 'Password Changed';

  @override
  String get yourPasswordHasBeenChanged =>
      'Your password has been changed succesfully';

  @override
  String get allCategories => 'All Categories';

  @override
  String get reply => 'Reply';

  @override
  String get from => 'From';

  @override
  String get specification => 'Specification';

  @override
  String get model => 'Model';

  @override
  String get brand => 'Brand';

  @override
  String get summary => 'Summary';
}
