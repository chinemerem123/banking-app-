import 'package:nnaji_christian_s_application7/presentation/home_screen/home_screen.dart';
import 'package:nnaji_christian_s_application7/presentation/home_screen/binding/home_binding.dart';
import 'package:nnaji_christian_s_application7/presentation/transactions_screen/transactions_screen.dart';
import 'package:nnaji_christian_s_application7/presentation/transactions_screen/binding/transactions_binding.dart';
import 'package:nnaji_christian_s_application7/presentation/accounts_screen/accounts_screen.dart';
import 'package:nnaji_christian_s_application7/presentation/accounts_screen/binding/accounts_binding.dart';
import 'package:nnaji_christian_s_application7/presentation/investments_screen/investments_screen.dart';
import 'package:nnaji_christian_s_application7/presentation/investments_screen/binding/investments_binding.dart';
import 'package:nnaji_christian_s_application7/presentation/credit_cards_screen/credit_cards_screen.dart';
import 'package:nnaji_christian_s_application7/presentation/credit_cards_screen/binding/credit_cards_binding.dart';
import 'package:nnaji_christian_s_application7/presentation/loans_screen/loans_screen.dart';
import 'package:nnaji_christian_s_application7/presentation/loans_screen/binding/loans_binding.dart';
import 'package:nnaji_christian_s_application7/presentation/services_screen/services_screen.dart';
import 'package:nnaji_christian_s_application7/presentation/services_screen/binding/services_binding.dart';
import 'package:nnaji_christian_s_application7/presentation/setting_edit_profile_screen/setting_edit_profile_screen.dart';
import 'package:nnaji_christian_s_application7/presentation/setting_edit_profile_screen/binding/setting_edit_profile_binding.dart';
import 'package:nnaji_christian_s_application7/presentation/setting_preference_screen/setting_preference_screen.dart';
import 'package:nnaji_christian_s_application7/presentation/setting_preference_screen/binding/setting_preference_binding.dart';
import 'package:nnaji_christian_s_application7/presentation/setting_security_screen/setting_security_screen.dart';
import 'package:nnaji_christian_s_application7/presentation/setting_security_screen/binding/setting_security_binding.dart';
import 'package:nnaji_christian_s_application7/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:nnaji_christian_s_application7/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String homeScreen = '/home_screen';

  static const String transactionsScreen = '/transactions_screen';

  static const String accountsScreen = '/accounts_screen';

  static const String investmentsScreen = '/investments_screen';

  static const String creditCardsScreen = '/credit_cards_screen';

  static const String loansScreen = '/loans_screen';

  static const String servicesScreen = '/services_screen';

  static const String settingEditProfileScreen = '/setting_edit_profile_screen';

  static const String settingPreferenceScreen = '/setting_preference_screen';

  static const String settingSecurityScreen = '/setting_security_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: homeScreen,
      page: () => HomeScreen(),
      bindings: [
        HomeBinding(),
      ],
    ),
    GetPage(
      name: transactionsScreen,
      page: () => TransactionsScreen(),
      bindings: [
        TransactionsBinding(),
      ],
    ),
    GetPage(
      name: accountsScreen,
      page: () => AccountsScreen(),
      bindings: [
        AccountsBinding(),
      ],
    ),
    GetPage(
      name: investmentsScreen,
      page: () => InvestmentsScreen(),
      bindings: [
        InvestmentsBinding(),
      ],
    ),
    GetPage(
      name: creditCardsScreen,
      page: () => CreditCardsScreen(),
      bindings: [
        CreditCardsBinding(),
      ],
    ),
    GetPage(
      name: loansScreen,
      page: () => LoansScreen(),
      bindings: [
        LoansBinding(),
      ],
    ),
    GetPage(
      name: servicesScreen,
      page: () => ServicesScreen(),
      bindings: [
        ServicesBinding(),
      ],
    ),
    GetPage(
      name: settingEditProfileScreen,
      page: () => SettingEditProfileScreen(),
      bindings: [
        SettingEditProfileBinding(),
      ],
    ),
    GetPage(
      name: settingPreferenceScreen,
      page: () => SettingPreferenceScreen(),
      bindings: [
        SettingPreferenceBinding(),
      ],
    ),
    GetPage(
      name: settingSecurityScreen,
      page: () => SettingSecurityScreen(),
      bindings: [
        SettingSecurityBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => HomeScreen(),
      bindings: [
        HomeBinding(),
      ],
    )
  ];
}
