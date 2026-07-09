import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

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
/// import 'generated/app_localizations.dart';
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
  static const List<Locale> supportedLocales = <Locale>[Locale('en')];

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'Flux Player'**
  String get appName;

  /// No description provided for @tagline.
  ///
  /// In en, this message translates to:
  /// **'Your library. Your way.'**
  String get tagline;

  /// No description provided for @studioName.
  ///
  /// In en, this message translates to:
  /// **'Game-Changer Studios'**
  String get studioName;

  /// No description provided for @libraryTitle.
  ///
  /// In en, this message translates to:
  /// **'Library'**
  String get libraryTitle;

  /// No description provided for @historyTitle.
  ///
  /// In en, this message translates to:
  /// **'History'**
  String get historyTitle;

  /// No description provided for @settingsTitle.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settingsTitle;

  /// No description provided for @detailsTitle.
  ///
  /// In en, this message translates to:
  /// **'Details'**
  String get detailsTitle;

  /// No description provided for @playerTitle.
  ///
  /// In en, this message translates to:
  /// **'Now Playing'**
  String get playerTitle;

  /// No description provided for @continueWatching.
  ///
  /// In en, this message translates to:
  /// **'Continue Watching'**
  String get continueWatching;

  /// No description provided for @placeholderComingSoon.
  ///
  /// In en, this message translates to:
  /// **'Coming soon'**
  String get placeholderComingSoon;

  /// No description provided for @retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// No description provided for @errorGeneric.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong'**
  String get errorGeneric;

  /// No description provided for @errorFileMissing.
  ///
  /// In en, this message translates to:
  /// **'This file is no longer available on disk'**
  String get errorFileMissing;

  /// No description provided for @addFolder.
  ///
  /// In en, this message translates to:
  /// **'Add folder'**
  String get addFolder;

  /// No description provided for @scanLibrary.
  ///
  /// In en, this message translates to:
  /// **'Re-scan library'**
  String get scanLibrary;

  /// No description provided for @libraryEmpty.
  ///
  /// In en, this message translates to:
  /// **'Your library is empty'**
  String get libraryEmpty;

  /// No description provided for @libraryEmptyHint.
  ///
  /// In en, this message translates to:
  /// **'Add a folder to start building your library'**
  String get libraryEmptyHint;

  /// No description provided for @moviesSection.
  ///
  /// In en, this message translates to:
  /// **'Movies'**
  String get moviesSection;

  /// No description provided for @episodesSection.
  ///
  /// In en, this message translates to:
  /// **'TV Episodes'**
  String get episodesSection;

  /// No description provided for @speedLabel.
  ///
  /// In en, this message translates to:
  /// **'Speed'**
  String get speedLabel;

  /// No description provided for @audioLabel.
  ///
  /// In en, this message translates to:
  /// **'Audio'**
  String get audioLabel;

  /// No description provided for @subtitlesLabel.
  ///
  /// In en, this message translates to:
  /// **'Subtitles'**
  String get subtitlesLabel;

  /// No description provided for @seekBack.
  ///
  /// In en, this message translates to:
  /// **'Back 10 seconds'**
  String get seekBack;

  /// No description provided for @seekForward.
  ///
  /// In en, this message translates to:
  /// **'Forward 10 seconds'**
  String get seekForward;

  /// No description provided for @trackNumber.
  ///
  /// In en, this message translates to:
  /// **'Track {number}'**
  String trackNumber(int number);

  /// No description provided for @daysAgo.
  ///
  /// In en, this message translates to:
  /// **'{days, plural, =0{Today} =1{Yesterday} other{{days} days ago}}'**
  String daysAgo(int days);

  /// No description provided for @historyEmpty.
  ///
  /// In en, this message translates to:
  /// **'Nothing watched yet'**
  String get historyEmpty;

  /// No description provided for @removeFromHistory.
  ///
  /// In en, this message translates to:
  /// **'Remove from History'**
  String get removeFromHistory;

  /// No description provided for @markWatched.
  ///
  /// In en, this message translates to:
  /// **'Mark as Watched'**
  String get markWatched;

  /// No description provided for @markUnwatched.
  ///
  /// In en, this message translates to:
  /// **'Mark as Unwatched'**
  String get markUnwatched;

  /// No description provided for @externalLabel.
  ///
  /// In en, this message translates to:
  /// **'External'**
  String get externalLabel;

  /// No description provided for @searchSubtitlesOnline.
  ///
  /// In en, this message translates to:
  /// **'Search subtitles online'**
  String get searchSubtitlesOnline;

  /// No description provided for @noSubtitlesFound.
  ///
  /// In en, this message translates to:
  /// **'No subtitles found'**
  String get noSubtitlesFound;

  /// No description provided for @downloadsCount.
  ///
  /// In en, this message translates to:
  /// **'{count} downloads'**
  String downloadsCount(int count);

  /// No description provided for @sdhLabel.
  ///
  /// In en, this message translates to:
  /// **'SDH'**
  String get sdhLabel;

  /// No description provided for @saveSubtitleNextToVideo.
  ///
  /// In en, this message translates to:
  /// **'Save next to video'**
  String get saveSubtitleNextToVideo;

  /// No description provided for @subtitleSaved.
  ///
  /// In en, this message translates to:
  /// **'Subtitle saved'**
  String get subtitleSaved;

  /// No description provided for @playbackSection.
  ///
  /// In en, this message translates to:
  /// **'Playback'**
  String get playbackSection;

  /// No description provided for @librarySection.
  ///
  /// In en, this message translates to:
  /// **'Library'**
  String get librarySection;

  /// No description provided for @subtitlesSection.
  ///
  /// In en, this message translates to:
  /// **'Subtitles'**
  String get subtitlesSection;

  /// No description provided for @appearanceSection.
  ///
  /// In en, this message translates to:
  /// **'Appearance'**
  String get appearanceSection;

  /// No description provided for @aboutSection.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get aboutSection;

  /// No description provided for @defaultSubtitleLanguage.
  ///
  /// In en, this message translates to:
  /// **'Default subtitle language'**
  String get defaultSubtitleLanguage;

  /// No description provided for @defaultAudioLanguage.
  ///
  /// In en, this message translates to:
  /// **'Default audio language'**
  String get defaultAudioLanguage;

  /// No description provided for @rememberPosition.
  ///
  /// In en, this message translates to:
  /// **'Remember position'**
  String get rememberPosition;

  /// No description provided for @autoPlayNext.
  ///
  /// In en, this message translates to:
  /// **'Auto-play next episode'**
  String get autoPlayNext;

  /// No description provided for @skipIntroDuration.
  ///
  /// In en, this message translates to:
  /// **'Skip intro duration'**
  String get skipIntroDuration;

  /// No description provided for @defaultPlaybackSpeed.
  ///
  /// In en, this message translates to:
  /// **'Default playback speed'**
  String get defaultPlaybackSpeed;

  /// No description provided for @manageFolders.
  ///
  /// In en, this message translates to:
  /// **'Source folders'**
  String get manageFolders;

  /// No description provided for @autoScanOnStart.
  ///
  /// In en, this message translates to:
  /// **'Auto-scan on start'**
  String get autoScanOnStart;

  /// No description provided for @metadataLanguage.
  ///
  /// In en, this message translates to:
  /// **'TMDb metadata language'**
  String get metadataLanguage;

  /// No description provided for @subtitleFontSize.
  ///
  /// In en, this message translates to:
  /// **'Font size'**
  String get subtitleFontSize;

  /// No description provided for @tmdbApiKeyLabel.
  ///
  /// In en, this message translates to:
  /// **'TMDb API key'**
  String get tmdbApiKeyLabel;

  /// No description provided for @openSubtitlesApiKeyLabel.
  ///
  /// In en, this message translates to:
  /// **'OpenSubtitles API key'**
  String get openSubtitlesApiKeyLabel;

  /// No description provided for @apiKeySaved.
  ///
  /// In en, this message translates to:
  /// **'API key saved'**
  String get apiKeySaved;

  /// No description provided for @themeLabel.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get themeLabel;

  /// No description provided for @themeDark.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get themeDark;

  /// No description provided for @themeAmoled.
  ///
  /// In en, this message translates to:
  /// **'AMOLED Black'**
  String get themeAmoled;

  /// No description provided for @themeLight.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get themeLight;

  /// No description provided for @accentLabel.
  ///
  /// In en, this message translates to:
  /// **'Accent color'**
  String get accentLabel;

  /// No description provided for @accentIndigo.
  ///
  /// In en, this message translates to:
  /// **'Indigo'**
  String get accentIndigo;

  /// No description provided for @accentAmber.
  ///
  /// In en, this message translates to:
  /// **'Amber'**
  String get accentAmber;

  /// No description provided for @accentTeal.
  ///
  /// In en, this message translates to:
  /// **'Teal'**
  String get accentTeal;

  /// No description provided for @accentRose.
  ///
  /// In en, this message translates to:
  /// **'Rose'**
  String get accentRose;

  /// No description provided for @accentEmerald.
  ///
  /// In en, this message translates to:
  /// **'Emerald'**
  String get accentEmerald;

  /// No description provided for @appVersionLabel.
  ///
  /// In en, this message translates to:
  /// **'Version'**
  String get appVersionLabel;

  /// No description provided for @licensesLabel.
  ///
  /// In en, this message translates to:
  /// **'Open source licenses'**
  String get licensesLabel;

  /// No description provided for @clearWatchHistory.
  ///
  /// In en, this message translates to:
  /// **'Clear Watch History'**
  String get clearWatchHistory;

  /// No description provided for @clearWatchHistoryConfirm.
  ///
  /// In en, this message translates to:
  /// **'This removes all watch history. Continue?'**
  String get clearWatchHistoryConfirm;

  /// No description provided for @clearLibraryCache.
  ///
  /// In en, this message translates to:
  /// **'Clear Library Cache'**
  String get clearLibraryCache;

  /// No description provided for @clearLibraryCacheDone.
  ///
  /// In en, this message translates to:
  /// **'Metadata cache cleared'**
  String get clearLibraryCacheDone;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @secondsValue.
  ///
  /// In en, this message translates to:
  /// **'{seconds}s'**
  String secondsValue(int seconds);

  /// No description provided for @trayPlayPause.
  ///
  /// In en, this message translates to:
  /// **'Play/Pause'**
  String get trayPlayPause;

  /// No description provided for @trayStop.
  ///
  /// In en, this message translates to:
  /// **'Stop'**
  String get trayStop;

  /// No description provided for @trayQuit.
  ///
  /// In en, this message translates to:
  /// **'Quit'**
  String get trayQuit;

  /// No description provided for @sortLabel.
  ///
  /// In en, this message translates to:
  /// **'Sort'**
  String get sortLabel;

  /// No description provided for @sortByTitle.
  ///
  /// In en, this message translates to:
  /// **'By title'**
  String get sortByTitle;

  /// No description provided for @sortByYear.
  ///
  /// In en, this message translates to:
  /// **'By year'**
  String get sortByYear;

  /// No description provided for @sortByShow.
  ///
  /// In en, this message translates to:
  /// **'By show'**
  String get sortByShow;

  /// No description provided for @sortRecentlyAdded.
  ///
  /// In en, this message translates to:
  /// **'Recently added'**
  String get sortRecentlyAdded;

  /// No description provided for @sortByResolution.
  ///
  /// In en, this message translates to:
  /// **'By resolution'**
  String get sortByResolution;

  /// No description provided for @missingEpisodes.
  ///
  /// In en, this message translates to:
  /// **'Missing episodes'**
  String get missingEpisodes;
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
      <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
