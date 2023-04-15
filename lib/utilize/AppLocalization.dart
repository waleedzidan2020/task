import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AppLocatization {
  static const LocalizationsDelegate<AppLocatization> delegate =
      _AppLocalizationsDelegate();

  static AppLocatization of(BuildContext context) {
    return Localizations.of<AppLocatization>(context, AppLocatization)!;
  }

  final Map<String, Map<String, String>> _localizedValues = {
    'en': {
      'County': 'Tanta,stadium region',
      'Change_button': 'Change',
      'search_word': 'Search for Meal or Restaurant',
      'category': 'Category',
      're-order': 'Re-Order',
      'quick_request': 'Quick Request',
      'restaurants': 'Restaurants',
      'grocery': 'Grocery',
      'indian_restaurant': 'Indian Restaurant',
      'family_meal': 'Family Meal',
      'salam_store': 'Salam Store',
      'most_wanted': 'the Most Wanted',
      'all': 'All',
      'cook_door': 'Cook Door',
      'scaptra_cafe': 'Scaptra Cafe',
      'fried_chicken': 'Fried Chicken',
      'burger': 'Burger',
      'minute': 'Minute',
      'likes': 'You may like it',
      'happy_meal': 'Happy Meal'
    },
    'ar': {
      'County': 'طنطا منطقة الاستاد',
      'Change_button': 'تغيير',
      'search_word': 'ابحث عن وجبة او مطعم ',
      'category': 'الاقسام',
      're-order': 'اعادة طلب',
      'quick_request': 'الطلب سريع',
      'restaurants': 'المطاعم',
      'grocery': 'بقالة',
      'indian_restaurant': 'مطعم هندي',
      'family_meal': 'وجبة العائلة',
      'salam_store': 'متجر السلام',
      'most_wanted': 'الاكثر طلبا',
      'all': 'الكل',
      'cook_door': 'كوك دور',
      'scaptra_cafe': 'سكبترا كافيه',
      'fried_chicken': 'فرايد تشيكن',
      'burger': 'برجر',
      'minute': 'دقيقة',
      'likes': 'قد يعجبك',
      'happy_meal': 'وجبة الاكيلة'
    },
  };

  String translate(String key) {
    return _localizedValues[locale.languageCode]![key]!;
  }

  late Locale locale;

  AppLocatization(this.locale);
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocatization> {
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['en', 'ar'].contains(locale.languageCode);
  }

  @override
  Future<AppLocatization> load(Locale locale) {
    return SynchronousFuture<AppLocatization>(AppLocatization(locale));
  }

  @override
  bool shouldReload(_AppLocalizationsDelegate old) {
    return false;
  }
}
