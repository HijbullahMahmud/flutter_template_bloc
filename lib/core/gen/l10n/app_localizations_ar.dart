// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get english => 'English';

  @override
  String get bangla => 'বাংলা';

  @override
  String get arabic => 'العربية';

  @override
  String get home => 'الرئيسية';

  @override
  String get account => 'الحساب';

  @override
  String get category => 'الفئة';

  @override
  String get favourite => 'المفضلة';

  @override
  String get profile => 'الملف الشخصي';

  @override
  String get login => 'تسجيل الدخول';

  @override
  String get createNewPassword => 'إنشاء كلمة مرور جديدة';

  @override
  String get createNewPasswordHint =>
      'يجب أن تكون كلمة المرور الجديدة مختلفة عن كلمات المرور المستخدمة سابقاً.';

  @override
  String get resetPassword => 'إعادة تعيين كلمة المرور';

  @override
  String get newPassword => 'New Password';

  @override
  String get passwordChangeSuccess => 'تم تغيير كلمة المرور بنجاح';

  @override
  String get emailRequired => 'البريد الإلكتروني مطلوب';

  @override
  String get passwordRequired => 'كلمة المرور مطلوبة';

  @override
  String get isRequired => 'هذا الحقل مطلوب';

  @override
  String get validEmail => 'يرجى إدخال عنوان بريد إلكتروني صحيح';

  @override
  String get enterAssociatedEmail =>
      'أدخل البريد الإلكتروني المرتبط بحسابك وسنرسل لك بريداً إلكترونياً مع تعليمات لإعادة تعيين كلمة المرور.';

  @override
  String minLengthValidation(int min) {
    return 'يجب أن يحتوي هذا الحقل على $min أحرف على الأقل';
  }

  @override
  String maxLengthValidation(int max) {
    return 'يجب أن يحتوي هذا الحقل على $max أحرف كحد أقصى';
  }

  @override
  String get yourPasswordChanged => 'تم تغيير كلمة المرور بنجاح.';

  @override
  String get confirmPassword => 'Confirm Password';

  @override
  String get logout => 'تسجيل الخروج';

  @override
  String get getStarted => 'ابدأ';

  @override
  String get rememberMe => 'تذكرني';

  @override
  String get forgotPassword => 'نسيت كلمة المرور';

  @override
  String get backToLogin => 'Back to login';

  @override
  String get continueAction => 'متابعة';

  @override
  String get signUp => 'إنشاء حساب';

  @override
  String get signIn => 'تسجيل الدخول';

  @override
  String get createAccount => 'Create Account';

  @override
  String get email => 'البريد الإلكتروني';

  @override
  String get emailAddress => 'عنوان البريد الإلكتروني';

  @override
  String get password => 'كلمة المرور';

  @override
  String get firstName => 'First Name';

  @override
  String get lastName => 'Last Name';

  @override
  String get dontHaveAccount => 'ليس لديك حساب؟ ';

  @override
  String get alreadyHaveAccount => 'لديك حساب بالفعل؟ ';

  @override
  String get checkYourMail => 'تحقق من بريدك الإلكتروني';

  @override
  String get enterVerificationCode =>
      'يرجى إدخال الرمز المكون من 4 أرقام المرسل إلى بريدك الإلكتروني hello**@gmail.com.';

  @override
  String get didntGetCode => 'لم تحصل على رمز؟ ';

  @override
  String get clickToResend => 'انقر لإعادة الإرسال';

  @override
  String get didNotReceiveEmail =>
      'لم تستلم البريد الإلكتروني؟ تحقق من مجلد الرسائل غير المرغوب فيها. أو ';

  @override
  String get tryAnotherEmail => 'جرب عنوان بريد إلكتروني آخر';

  @override
  String get learnFlutterTitle => 'تعلم Flutter مع دروس شاملة.';

  @override
  String get learnFlutterSubtitle => 'دليل خطوة بخطوة لبناء تطبيقات Flutter.';

  @override
  String get learnFlutterDescription =>
      'احصل على إشعارات للدروس الجديدة والتحديثات.';

  @override
  String get joinCommunityTitle => 'انضم إلى مجتمع Flutter.';

  @override
  String get joinCommunitySubtitle => 'تواصل مع مطوري Flutter الآخرين.';

  @override
  String get joinCommunityDescription => 'شارك في أحداث المجتمع والمناقشات.';

  @override
  String get buildDeployTitle => 'ابن ونشر تطبيقات Flutter بسهولة.';

  @override
  String get buildDeploySubtitle => 'احصل على أدوات وموارد لتطوير التطبيقات.';

  @override
  String get buildDeployDescription => 'انشر تطبيقاتك على منصات متعددة بسهولة.';

  @override
  String passwordMinLengthValidation(String minLength) {
    return 'يجب أن تحتوي كلمة المرور على $minLength أحرف على الأقل';
  }

  @override
  String get passwordNumberValidation =>
      'يجب أن تحتوي كلمة المرور على رقم واحد على الأقل';

  @override
  String get passwordLowerCaseValidation =>
      'يجب أن تحتوي كلمة المرور على حرف صغير واحد على الأقل';

  @override
  String get passwordUpperCaseValidation =>
      'يجب أن تحتوي كلمة المرور على حرف كبير واحد على الأقل';

  @override
  String get passwordSpecialCharValidation =>
      'يجب أن تحتوي كلمة المرور على رمز خاص واحد على الأقل';

  @override
  String get off => 'خصم';

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
