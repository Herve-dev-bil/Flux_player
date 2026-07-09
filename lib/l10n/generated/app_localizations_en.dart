// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'Flux Player';

  @override
  String get tagline => 'Your library. Your way.';

  @override
  String get studioName => 'Game-Changer Studios';

  @override
  String get libraryTitle => 'Library';

  @override
  String get historyTitle => 'History';

  @override
  String get settingsTitle => 'Settings';

  @override
  String get detailsTitle => 'Details';

  @override
  String get playerTitle => 'Now Playing';

  @override
  String get continueWatching => 'Continue Watching';

  @override
  String get placeholderComingSoon => 'Coming soon';

  @override
  String get retry => 'Retry';

  @override
  String get errorGeneric => 'Something went wrong';

  @override
  String get errorFileMissing => 'This file is no longer available on disk';

  @override
  String get addFolder => 'Add folder';

  @override
  String get scanLibrary => 'Re-scan library';

  @override
  String get libraryEmpty => 'Your library is empty';

  @override
  String get libraryEmptyHint => 'Add a folder to start building your library';

  @override
  String get moviesSection => 'Movies';

  @override
  String get episodesSection => 'TV Episodes';

  @override
  String get speedLabel => 'Speed';

  @override
  String get audioLabel => 'Audio';

  @override
  String get subtitlesLabel => 'Subtitles';

  @override
  String get seekBack => 'Back 10 seconds';

  @override
  String get seekForward => 'Forward 10 seconds';

  @override
  String trackNumber(int number) {
    return 'Track $number';
  }

  @override
  String daysAgo(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days days ago',
      one: 'Yesterday',
      zero: 'Today',
    );
    return '$_temp0';
  }

  @override
  String get historyEmpty => 'Nothing watched yet';

  @override
  String get removeFromHistory => 'Remove from History';

  @override
  String get markWatched => 'Mark as Watched';

  @override
  String get markUnwatched => 'Mark as Unwatched';

  @override
  String get externalLabel => 'External';

  @override
  String get searchSubtitlesOnline => 'Search subtitles online';

  @override
  String get noSubtitlesFound => 'No subtitles found';

  @override
  String downloadsCount(int count) {
    return '$count downloads';
  }

  @override
  String get sdhLabel => 'SDH';

  @override
  String get saveSubtitleNextToVideo => 'Save next to video';

  @override
  String get subtitleSaved => 'Subtitle saved';

  @override
  String get playbackSection => 'Playback';

  @override
  String get librarySection => 'Library';

  @override
  String get subtitlesSection => 'Subtitles';

  @override
  String get appearanceSection => 'Appearance';

  @override
  String get aboutSection => 'About';

  @override
  String get defaultSubtitleLanguage => 'Default subtitle language';

  @override
  String get defaultAudioLanguage => 'Default audio language';

  @override
  String get rememberPosition => 'Remember position';

  @override
  String get autoPlayNext => 'Auto-play next episode';

  @override
  String get skipIntroDuration => 'Skip intro duration';

  @override
  String get defaultPlaybackSpeed => 'Default playback speed';

  @override
  String get manageFolders => 'Source folders';

  @override
  String get autoScanOnStart => 'Auto-scan on start';

  @override
  String get metadataLanguage => 'TMDb metadata language';

  @override
  String get subtitleFontSize => 'Font size';

  @override
  String get tmdbApiKeyLabel => 'TMDb API key';

  @override
  String get openSubtitlesApiKeyLabel => 'OpenSubtitles API key';

  @override
  String get apiKeySaved => 'API key saved';

  @override
  String get themeLabel => 'Theme';

  @override
  String get themeDark => 'Dark';

  @override
  String get themeAmoled => 'AMOLED Black';

  @override
  String get themeLight => 'Light';

  @override
  String get accentLabel => 'Accent color';

  @override
  String get accentIndigo => 'Indigo';

  @override
  String get accentAmber => 'Amber';

  @override
  String get accentTeal => 'Teal';

  @override
  String get accentRose => 'Rose';

  @override
  String get accentEmerald => 'Emerald';

  @override
  String get appVersionLabel => 'Version';

  @override
  String get licensesLabel => 'Open source licenses';

  @override
  String get clearWatchHistory => 'Clear Watch History';

  @override
  String get clearWatchHistoryConfirm =>
      'This removes all watch history. Continue?';

  @override
  String get clearLibraryCache => 'Clear Library Cache';

  @override
  String get clearLibraryCacheDone => 'Metadata cache cleared';

  @override
  String get cancel => 'Cancel';

  @override
  String get confirm => 'Confirm';

  @override
  String get save => 'Save';

  @override
  String secondsValue(int seconds) {
    return '${seconds}s';
  }

  @override
  String get trayPlayPause => 'Play/Pause';

  @override
  String get trayStop => 'Stop';

  @override
  String get trayQuit => 'Quit';

  @override
  String get sortLabel => 'Sort';

  @override
  String get sortByTitle => 'By title';

  @override
  String get sortByYear => 'By year';

  @override
  String get sortByShow => 'By show';

  @override
  String get sortRecentlyAdded => 'Recently added';

  @override
  String get sortByResolution => 'By resolution';

  @override
  String get missingEpisodes => 'Missing episodes';
}
