import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_bn.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('bn'),
    Locale('en'),
  ];

  /// No description provided for @english.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get english;

  /// No description provided for @bangla.
  ///
  /// In en, this message translates to:
  /// **'বাংলা'**
  String get bangla;

  /// No description provided for @arabic.
  ///
  /// In en, this message translates to:
  /// **'العربية'**
  String get arabic;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @account.
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get account;

  /// No description provided for @category.
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get category;

  /// No description provided for @favourite.
  ///
  /// In en, this message translates to:
  /// **'Wishlist'**
  String get favourite;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @createNewPassword.
  ///
  /// In en, this message translates to:
  /// **'Create New password'**
  String get createNewPassword;

  /// No description provided for @createNewPasswordHint.
  ///
  /// In en, this message translates to:
  /// **'Your new password must be different from previous used passwords.'**
  String get createNewPasswordHint;

  /// No description provided for @resetPassword.
  ///
  /// In en, this message translates to:
  /// **'Reset Password'**
  String get resetPassword;

  /// No description provided for @newPassword.
  ///
  /// In en, this message translates to:
  /// **'New Password'**
  String get newPassword;

  /// No description provided for @passwordChangeSuccess.
  ///
  /// In en, this message translates to:
  /// **'Password Changed Successfully'**
  String get passwordChangeSuccess;

  /// No description provided for @emailRequired.
  ///
  /// In en, this message translates to:
  /// **'Email is required'**
  String get emailRequired;

  /// No description provided for @passwordRequired.
  ///
  /// In en, this message translates to:
  /// **'Password is required'**
  String get passwordRequired;

  /// No description provided for @isRequired.
  ///
  /// In en, this message translates to:
  /// **'This field is required'**
  String get isRequired;

  /// No description provided for @validEmail.
  ///
  /// In en, this message translates to:
  /// **'Please enter valid email address'**
  String get validEmail;

  /// No description provided for @enterAssociatedEmail.
  ///
  /// In en, this message translates to:
  /// **'Enter the email associated with your account and we’ll send an email with instructions to reset your password.'**
  String get enterAssociatedEmail;

  /// Error message for minimum length validation
  ///
  /// In en, this message translates to:
  /// **'This field must be at least {min} characters long'**
  String minLengthValidation(int min);

  /// Error message for maximum length validation
  ///
  /// In en, this message translates to:
  /// **'This field must be at most {max} characters long'**
  String maxLengthValidation(int max);

  /// No description provided for @yourPasswordChanged.
  ///
  /// In en, this message translates to:
  /// **'Your password has been changed successfully.'**
  String get yourPasswordChanged;

  /// No description provided for @confirmPassword.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password'**
  String get confirmPassword;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;

  /// No description provided for @getStarted.
  ///
  /// In en, this message translates to:
  /// **'Get Started'**
  String get getStarted;

  /// No description provided for @rememberMe.
  ///
  /// In en, this message translates to:
  /// **'Remember me'**
  String get rememberMe;

  /// No description provided for @forgotPassword.
  ///
  /// In en, this message translates to:
  /// **'Forgot password'**
  String get forgotPassword;

  /// No description provided for @backToLogin.
  ///
  /// In en, this message translates to:
  /// **'Back to login'**
  String get backToLogin;

  /// No description provided for @continueAction.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueAction;

  /// No description provided for @signUp.
  ///
  /// In en, this message translates to:
  /// **'Sign up'**
  String get signUp;

  /// No description provided for @signIn.
  ///
  /// In en, this message translates to:
  /// **'Sign in'**
  String get signIn;

  /// No description provided for @createAccount.
  ///
  /// In en, this message translates to:
  /// **'Create Account'**
  String get createAccount;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @emailAddress.
  ///
  /// In en, this message translates to:
  /// **'Email Address'**
  String get emailAddress;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @firstName.
  ///
  /// In en, this message translates to:
  /// **'First Name'**
  String get firstName;

  /// No description provided for @lastName.
  ///
  /// In en, this message translates to:
  /// **'Last Name'**
  String get lastName;

  /// No description provided for @dontHaveAccount.
  ///
  /// In en, this message translates to:
  /// **'Don\'t have an account? '**
  String get dontHaveAccount;

  /// No description provided for @alreadyHaveAccount.
  ///
  /// In en, this message translates to:
  /// **'Already have an account? '**
  String get alreadyHaveAccount;

  /// No description provided for @checkYourMail.
  ///
  /// In en, this message translates to:
  /// **'Check your mail'**
  String get checkYourMail;

  /// No description provided for @enterVerificationCode.
  ///
  /// In en, this message translates to:
  /// **'Please enter 4 digit code sent to your mail hello**@gmail.com.'**
  String get enterVerificationCode;

  /// No description provided for @didntGetCode.
  ///
  /// In en, this message translates to:
  /// **'Didn\'t get a code? '**
  String get didntGetCode;

  /// No description provided for @clickToResend.
  ///
  /// In en, this message translates to:
  /// **'Click to resend'**
  String get clickToResend;

  /// No description provided for @didNotReceiveEmail.
  ///
  /// In en, this message translates to:
  /// **'Did not receive the email? Check your spam filter. or '**
  String get didNotReceiveEmail;

  /// No description provided for @tryAnotherEmail.
  ///
  /// In en, this message translates to:
  /// **'try another email address'**
  String get tryAnotherEmail;

  /// No description provided for @learnFlutterTitle.
  ///
  /// In en, this message translates to:
  /// **'Learn Flutter with comprehensive tutorials.'**
  String get learnFlutterTitle;

  /// No description provided for @learnFlutterSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Step-by-step guides for building Flutter apps.'**
  String get learnFlutterSubtitle;

  /// No description provided for @learnFlutterDescription.
  ///
  /// In en, this message translates to:
  /// **'Get notifications for new tutorials and updates.'**
  String get learnFlutterDescription;

  /// No description provided for @joinCommunityTitle.
  ///
  /// In en, this message translates to:
  /// **'Join the Flutter community.'**
  String get joinCommunityTitle;

  /// No description provided for @joinCommunitySubtitle.
  ///
  /// In en, this message translates to:
  /// **'Connect with other Flutter developers.'**
  String get joinCommunitySubtitle;

  /// No description provided for @joinCommunityDescription.
  ///
  /// In en, this message translates to:
  /// **'Participate in community events and discussions.'**
  String get joinCommunityDescription;

  /// No description provided for @buildDeployTitle.
  ///
  /// In en, this message translates to:
  /// **'Build and deploy Flutter apps easily.'**
  String get buildDeployTitle;

  /// No description provided for @buildDeploySubtitle.
  ///
  /// In en, this message translates to:
  /// **'Access tools and resources for app development.'**
  String get buildDeploySubtitle;

  /// No description provided for @buildDeployDescription.
  ///
  /// In en, this message translates to:
  /// **'Deploy your apps to multiple platforms with ease.'**
  String get buildDeployDescription;

  /// Error message for password minimum length validation
  ///
  /// In en, this message translates to:
  /// **'Password must be at least {minLength} characters'**
  String passwordMinLengthValidation(String minLength);

  /// No description provided for @passwordNumberValidation.
  ///
  /// In en, this message translates to:
  /// **'Password must contain at least one number'**
  String get passwordNumberValidation;

  /// No description provided for @passwordLowerCaseValidation.
  ///
  /// In en, this message translates to:
  /// **'Password must contain at least one lowercase letter'**
  String get passwordLowerCaseValidation;

  /// No description provided for @passwordUpperCaseValidation.
  ///
  /// In en, this message translates to:
  /// **'Password must contain at least one uppercase letter'**
  String get passwordUpperCaseValidation;

  /// No description provided for @passwordSpecialCharValidation.
  ///
  /// In en, this message translates to:
  /// **'Password must contain at least one special character'**
  String get passwordSpecialCharValidation;

  /// No description provided for @off.
  ///
  /// In en, this message translates to:
  /// **'Off'**
  String get off;

  /// No description provided for @shopNow.
  ///
  /// In en, this message translates to:
  /// **'Shop Now'**
  String get shopNow;

  /// No description provided for @addToCart.
  ///
  /// In en, this message translates to:
  /// **'Add To Cart'**
  String get addToCart;

  /// No description provided for @bestDeals.
  ///
  /// In en, this message translates to:
  /// **'Best Deals'**
  String get bestDeals;

  /// No description provided for @newArrivals.
  ///
  /// In en, this message translates to:
  /// **'New Arrivals'**
  String get newArrivals;

  /// No description provided for @featuredProducts.
  ///
  /// In en, this message translates to:
  /// **'Featured Products'**
  String get featuredProducts;

  /// No description provided for @topBrands.
  ///
  /// In en, this message translates to:
  /// **'Top Brands'**
  String get topBrands;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// No description provided for @selectColor.
  ///
  /// In en, this message translates to:
  /// **'Select Color:'**
  String get selectColor;

  /// No description provided for @variant.
  ///
  /// In en, this message translates to:
  /// **'Variant:'**
  String get variant;

  /// No description provided for @deliveryTimeScale.
  ///
  /// In en, this message translates to:
  /// **'Delivery Timescale:'**
  String get deliveryTimeScale;

  /// No description provided for @description.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get description;

  /// No description provided for @detail.
  ///
  /// In en, this message translates to:
  /// **'Details'**
  String get detail;

  /// No description provided for @review.
  ///
  /// In en, this message translates to:
  /// **'Review'**
  String get review;

  /// No description provided for @cart.
  ///
  /// In en, this message translates to:
  /// **'Cart'**
  String get cart;

  /// No description provided for @orderSummary.
  ///
  /// In en, this message translates to:
  /// **'Order Summary'**
  String get orderSummary;

  /// No description provided for @promoCode.
  ///
  /// In en, this message translates to:
  /// **'Promo Code'**
  String get promoCode;

  /// No description provided for @apply.
  ///
  /// In en, this message translates to:
  /// **'Apply'**
  String get apply;

  /// No description provided for @subTotal.
  ///
  /// In en, this message translates to:
  /// **'Sub Total'**
  String get subTotal;

  /// No description provided for @shipping.
  ///
  /// In en, this message translates to:
  /// **'Shipping'**
  String get shipping;

  /// No description provided for @tax.
  ///
  /// In en, this message translates to:
  /// **'Tax'**
  String get tax;

  /// No description provided for @totalAmount.
  ///
  /// In en, this message translates to:
  /// **'Total Amount'**
  String get totalAmount;

  /// No description provided for @checkout.
  ///
  /// In en, this message translates to:
  /// **'Checkout'**
  String get checkout;

  /// No description provided for @checkoutAndConfirmOrder.
  ///
  /// In en, this message translates to:
  /// **'Checkout & Confirm Order'**
  String get checkoutAndConfirmOrder;

  /// No description provided for @confirmOrder.
  ///
  /// In en, this message translates to:
  /// **'Confirm Order'**
  String get confirmOrder;

  /// No description provided for @deliveryInformation.
  ///
  /// In en, this message translates to:
  /// **'Delivery Information'**
  String get deliveryInformation;

  /// No description provided for @addNew.
  ///
  /// In en, this message translates to:
  /// **'Add New'**
  String get addNew;

  /// No description provided for @paymentType.
  ///
  /// In en, this message translates to:
  /// **'Payment Type'**
  String get paymentType;

  /// No description provided for @cashOnDelivery.
  ///
  /// In en, this message translates to:
  /// **'Cash On Delivery'**
  String get cashOnDelivery;

  /// No description provided for @onlinePayment.
  ///
  /// In en, this message translates to:
  /// **'Online Payment'**
  String get onlinePayment;

  /// No description provided for @paymentMethod.
  ///
  /// In en, this message translates to:
  /// **'Payment Method'**
  String get paymentMethod;

  /// No description provided for @itemList.
  ///
  /// In en, this message translates to:
  /// **'Item List'**
  String get itemList;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// No description provided for @phone.
  ///
  /// In en, this message translates to:
  /// **'Phone'**
  String get phone;

  /// No description provided for @address.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get address;

  /// No description provided for @addNewAddress.
  ///
  /// In en, this message translates to:
  /// **'Add New Address'**
  String get addNewAddress;

  /// No description provided for @phoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get phoneNumber;

  /// No description provided for @state.
  ///
  /// In en, this message translates to:
  /// **'State'**
  String get state;

  /// No description provided for @city.
  ///
  /// In en, this message translates to:
  /// **'City'**
  String get city;

  /// No description provided for @zipCode.
  ///
  /// In en, this message translates to:
  /// **'ZIP Code'**
  String get zipCode;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @editAddress.
  ///
  /// In en, this message translates to:
  /// **'Edit Address'**
  String get editAddress;

  /// No description provided for @filter.
  ///
  /// In en, this message translates to:
  /// **'Filter'**
  String get filter;

  /// No description provided for @sort.
  ///
  /// In en, this message translates to:
  /// **'Sort'**
  String get sort;

  /// No description provided for @resultFound.
  ///
  /// In en, this message translates to:
  /// **'results found'**
  String get resultFound;

  /// No description provided for @order.
  ///
  /// In en, this message translates to:
  /// **'Order'**
  String get order;

  /// No description provided for @wishList.
  ///
  /// In en, this message translates to:
  /// **'Wishlist'**
  String get wishList;

  /// No description provided for @coupons.
  ///
  /// In en, this message translates to:
  /// **'Coupons'**
  String get coupons;

  /// No description provided for @addresses.
  ///
  /// In en, this message translates to:
  /// **'Addresses'**
  String get addresses;

  /// No description provided for @changePassword.
  ///
  /// In en, this message translates to:
  /// **'Change Password'**
  String get changePassword;

  /// No description provided for @copy.
  ///
  /// In en, this message translates to:
  /// **'Copy'**
  String get copy;

  /// No description provided for @code.
  ///
  /// In en, this message translates to:
  /// **'Code'**
  String get code;

  /// No description provided for @currentPassword.
  ///
  /// In en, this message translates to:
  /// **'Current Password'**
  String get currentPassword;

  /// No description provided for @recentSearch.
  ///
  /// In en, this message translates to:
  /// **'Recent Search'**
  String get recentSearch;

  /// No description provided for @recentlyViewed.
  ///
  /// In en, this message translates to:
  /// **'Recently viewed'**
  String get recentlyViewed;

  /// No description provided for @orderId.
  ///
  /// In en, this message translates to:
  /// **'Order ID'**
  String get orderId;

  /// No description provided for @completed.
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get completed;

  /// No description provided for @pending.
  ///
  /// In en, this message translates to:
  /// **'Pending'**
  String get pending;

  /// No description provided for @viewDetails.
  ///
  /// In en, this message translates to:
  /// **'View Details'**
  String get viewDetails;

  /// No description provided for @total.
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get total;

  /// No description provided for @orderDetail.
  ///
  /// In en, this message translates to:
  /// **'Order Details'**
  String get orderDetail;

  /// No description provided for @orderConfirmation.
  ///
  /// In en, this message translates to:
  /// **'Order Confirmation'**
  String get orderConfirmation;

  /// No description provided for @createOrder.
  ///
  /// In en, this message translates to:
  /// **'Order Created'**
  String get createOrder;

  /// No description provided for @orderProcessing.
  ///
  /// In en, this message translates to:
  /// **'Order Processing'**
  String get orderProcessing;

  /// No description provided for @customerPayment.
  ///
  /// In en, this message translates to:
  /// **'Customer Payment'**
  String get customerPayment;

  /// No description provided for @onDelivery.
  ///
  /// In en, this message translates to:
  /// **'On Delivery'**
  String get onDelivery;

  /// No description provided for @orderCompleted.
  ///
  /// In en, this message translates to:
  /// **'Order Completed'**
  String get orderCompleted;

  /// No description provided for @cancelOrder.
  ///
  /// In en, this message translates to:
  /// **'Cancel Order'**
  String get cancelOrder;

  /// No description provided for @exploreMore.
  ///
  /// In en, this message translates to:
  /// **'Explore More'**
  String get exploreMore;

  /// No description provided for @editAccount.
  ///
  /// In en, this message translates to:
  /// **'Edit Account'**
  String get editAccount;

  /// No description provided for @exploreTheApp.
  ///
  /// In en, this message translates to:
  /// **'Explore The App'**
  String get exploreTheApp;

  /// No description provided for @loginPageMessage.
  ///
  /// In en, this message translates to:
  /// **'Now your E-commerce are in one place and always under control'**
  String get loginPageMessage;

  /// No description provided for @acceptTerm.
  ///
  /// In en, this message translates to:
  /// **'I accept terms and privacy policy'**
  String get acceptTerm;

  /// No description provided for @sendCode.
  ///
  /// In en, this message translates to:
  /// **'Send Code'**
  String get sendCode;

  /// No description provided for @verify.
  ///
  /// In en, this message translates to:
  /// **'Verify'**
  String get verify;

  /// No description provided for @weveSendACodeTo.
  ///
  /// In en, this message translates to:
  /// **'We\'ve send a code to'**
  String get weveSendACodeTo;

  /// No description provided for @sendCodeAgain.
  ///
  /// In en, this message translates to:
  /// **'Send code again'**
  String get sendCodeAgain;

  /// No description provided for @pleaseCheckYourEmail.
  ///
  /// In en, this message translates to:
  /// **'Please check your email'**
  String get pleaseCheckYourEmail;

  /// No description provided for @orLoginWith.
  ///
  /// In en, this message translates to:
  /// **'or login with'**
  String get orLoginWith;

  /// No description provided for @forgotPasswordInfo.
  ///
  /// In en, this message translates to:
  /// **'Don’t worry! It happens. Please enter the email associated with your account.'**
  String get forgotPasswordInfo;

  /// No description provided for @resetPasswordInfo.
  ///
  /// In en, this message translates to:
  /// **'Please type something you’ll remember'**
  String get resetPasswordInfo;

  /// No description provided for @passwordChanged.
  ///
  /// In en, this message translates to:
  /// **'Password Changed'**
  String get passwordChanged;

  /// No description provided for @yourPasswordHasBeenChanged.
  ///
  /// In en, this message translates to:
  /// **'Your password has been changed succesfully'**
  String get yourPasswordHasBeenChanged;

  /// No description provided for @allCategories.
  ///
  /// In en, this message translates to:
  /// **'All Categories'**
  String get allCategories;

  /// No description provided for @reply.
  ///
  /// In en, this message translates to:
  /// **'Reply'**
  String get reply;

  /// No description provided for @from.
  ///
  /// In en, this message translates to:
  /// **'From'**
  String get from;

  /// No description provided for @specification.
  ///
  /// In en, this message translates to:
  /// **'Specification'**
  String get specification;

  /// No description provided for @model.
  ///
  /// In en, this message translates to:
  /// **'Model'**
  String get model;

  /// No description provided for @brand.
  ///
  /// In en, this message translates to:
  /// **'Brand'**
  String get brand;

  /// No description provided for @summary.
  ///
  /// In en, this message translates to:
  /// **'Summary'**
  String get summary;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ar', 'bn', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'bn':
      return AppLocalizationsBn();
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
