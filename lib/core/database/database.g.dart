// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
mixin _$MediaDaoMixin on DatabaseAccessor<FluxDatabase> {
  $MediaItemsTable get mediaItems => attachedDatabase.mediaItems;
  MediaDaoManager get managers => MediaDaoManager(this);
}

class MediaDaoManager {
  final _$MediaDaoMixin _db;
  MediaDaoManager(this._db);
  $$MediaItemsTableTableManager get mediaItems =>
      $$MediaItemsTableTableManager(_db.attachedDatabase, _db.mediaItems);
}

mixin _$HistoryDaoMixin on DatabaseAccessor<FluxDatabase> {
  $WatchHistoryEntriesTable get watchHistoryEntries =>
      attachedDatabase.watchHistoryEntries;
  $MediaItemsTable get mediaItems => attachedDatabase.mediaItems;
  HistoryDaoManager get managers => HistoryDaoManager(this);
}

class HistoryDaoManager {
  final _$HistoryDaoMixin _db;
  HistoryDaoManager(this._db);
  $$WatchHistoryEntriesTableTableManager get watchHistoryEntries =>
      $$WatchHistoryEntriesTableTableManager(
          _db.attachedDatabase, _db.watchHistoryEntries);
  $$MediaItemsTableTableManager get mediaItems =>
      $$MediaItemsTableTableManager(_db.attachedDatabase, _db.mediaItems);
}

mixin _$PreferencesDaoMixin on DatabaseAccessor<FluxDatabase> {
  $AppPreferencesTable get appPreferences => attachedDatabase.appPreferences;
  PreferencesDaoManager get managers => PreferencesDaoManager(this);
}

class PreferencesDaoManager {
  final _$PreferencesDaoMixin _db;
  PreferencesDaoManager(this._db);
  $$AppPreferencesTableTableManager get appPreferences =>
      $$AppPreferencesTableTableManager(
          _db.attachedDatabase, _db.appPreferences);
}

class $LibraryFoldersTable extends LibraryFolders
    with TableInfo<$LibraryFoldersTable, LibraryFolder> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LibraryFoldersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _pathMeta = const VerificationMeta('path');
  @override
  late final GeneratedColumn<String> path = GeneratedColumn<String>(
      'path', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _addedAtMeta =
      const VerificationMeta('addedAt');
  @override
  late final GeneratedColumn<DateTime> addedAt = GeneratedColumn<DateTime>(
      'added_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  @override
  List<GeneratedColumn> get $columns => [id, path, addedAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'library_folders';
  @override
  VerificationContext validateIntegrity(Insertable<LibraryFolder> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('path')) {
      context.handle(
          _pathMeta, path.isAcceptableOrUnknown(data['path']!, _pathMeta));
    } else if (isInserting) {
      context.missing(_pathMeta);
    }
    if (data.containsKey('added_at')) {
      context.handle(_addedAtMeta,
          addedAt.isAcceptableOrUnknown(data['added_at']!, _addedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  LibraryFolder map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LibraryFolder(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      path: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}path'])!,
      addedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}added_at'])!,
    );
  }

  @override
  $LibraryFoldersTable createAlias(String alias) {
    return $LibraryFoldersTable(attachedDatabase, alias);
  }
}

class LibraryFolder extends DataClass implements Insertable<LibraryFolder> {
  final int id;
  final String path;
  final DateTime addedAt;
  const LibraryFolder(
      {required this.id, required this.path, required this.addedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['path'] = Variable<String>(path);
    map['added_at'] = Variable<DateTime>(addedAt);
    return map;
  }

  LibraryFoldersCompanion toCompanion(bool nullToAbsent) {
    return LibraryFoldersCompanion(
      id: Value(id),
      path: Value(path),
      addedAt: Value(addedAt),
    );
  }

  factory LibraryFolder.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LibraryFolder(
      id: serializer.fromJson<int>(json['id']),
      path: serializer.fromJson<String>(json['path']),
      addedAt: serializer.fromJson<DateTime>(json['addedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'path': serializer.toJson<String>(path),
      'addedAt': serializer.toJson<DateTime>(addedAt),
    };
  }

  LibraryFolder copyWith({int? id, String? path, DateTime? addedAt}) =>
      LibraryFolder(
        id: id ?? this.id,
        path: path ?? this.path,
        addedAt: addedAt ?? this.addedAt,
      );
  LibraryFolder copyWithCompanion(LibraryFoldersCompanion data) {
    return LibraryFolder(
      id: data.id.present ? data.id.value : this.id,
      path: data.path.present ? data.path.value : this.path,
      addedAt: data.addedAt.present ? data.addedAt.value : this.addedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LibraryFolder(')
          ..write('id: $id, ')
          ..write('path: $path, ')
          ..write('addedAt: $addedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, path, addedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LibraryFolder &&
          other.id == this.id &&
          other.path == this.path &&
          other.addedAt == this.addedAt);
}

class LibraryFoldersCompanion extends UpdateCompanion<LibraryFolder> {
  final Value<int> id;
  final Value<String> path;
  final Value<DateTime> addedAt;
  const LibraryFoldersCompanion({
    this.id = const Value.absent(),
    this.path = const Value.absent(),
    this.addedAt = const Value.absent(),
  });
  LibraryFoldersCompanion.insert({
    this.id = const Value.absent(),
    required String path,
    this.addedAt = const Value.absent(),
  }) : path = Value(path);
  static Insertable<LibraryFolder> custom({
    Expression<int>? id,
    Expression<String>? path,
    Expression<DateTime>? addedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (path != null) 'path': path,
      if (addedAt != null) 'added_at': addedAt,
    });
  }

  LibraryFoldersCompanion copyWith(
      {Value<int>? id, Value<String>? path, Value<DateTime>? addedAt}) {
    return LibraryFoldersCompanion(
      id: id ?? this.id,
      path: path ?? this.path,
      addedAt: addedAt ?? this.addedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (path.present) {
      map['path'] = Variable<String>(path.value);
    }
    if (addedAt.present) {
      map['added_at'] = Variable<DateTime>(addedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LibraryFoldersCompanion(')
          ..write('id: $id, ')
          ..write('path: $path, ')
          ..write('addedAt: $addedAt')
          ..write(')'))
        .toString();
  }
}

class $MediaItemsTable extends MediaItems
    with TableInfo<$MediaItemsTable, MediaItem> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MediaItemsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _filePathMeta =
      const VerificationMeta('filePath');
  @override
  late final GeneratedColumn<String> filePath = GeneratedColumn<String>(
      'file_path', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _mediaTypeMeta =
      const VerificationMeta('mediaType');
  @override
  late final GeneratedColumn<String> mediaType = GeneratedColumn<String>(
      'media_type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _tmdbIdMeta = const VerificationMeta('tmdbId');
  @override
  late final GeneratedColumn<int> tmdbId = GeneratedColumn<int>(
      'tmdb_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _showTmdbIdMeta =
      const VerificationMeta('showTmdbId');
  @override
  late final GeneratedColumn<int> showTmdbId = GeneratedColumn<int>(
      'show_tmdb_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _seasonNumberMeta =
      const VerificationMeta('seasonNumber');
  @override
  late final GeneratedColumn<int> seasonNumber = GeneratedColumn<int>(
      'season_number', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _episodeNumberMeta =
      const VerificationMeta('episodeNumber');
  @override
  late final GeneratedColumn<int> episodeNumber = GeneratedColumn<int>(
      'episode_number', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _yearMeta = const VerificationMeta('year');
  @override
  late final GeneratedColumn<int> year = GeneratedColumn<int>(
      'year', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _posterPathMeta =
      const VerificationMeta('posterPath');
  @override
  late final GeneratedColumn<String> posterPath = GeneratedColumn<String>(
      'poster_path', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _resolutionTagMeta =
      const VerificationMeta('resolutionTag');
  @override
  late final GeneratedColumn<String> resolutionTag = GeneratedColumn<String>(
      'resolution_tag', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _fileMissingMeta =
      const VerificationMeta('fileMissing');
  @override
  late final GeneratedColumn<bool> fileMissing = GeneratedColumn<bool>(
      'file_missing', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("file_missing" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _addedAtMeta =
      const VerificationMeta('addedAt');
  @override
  late final GeneratedColumn<DateTime> addedAt = GeneratedColumn<DateTime>(
      'added_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        filePath,
        title,
        mediaType,
        tmdbId,
        showTmdbId,
        seasonNumber,
        episodeNumber,
        year,
        posterPath,
        resolutionTag,
        fileMissing,
        addedAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'media_items';
  @override
  VerificationContext validateIntegrity(Insertable<MediaItem> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('file_path')) {
      context.handle(_filePathMeta,
          filePath.isAcceptableOrUnknown(data['file_path']!, _filePathMeta));
    } else if (isInserting) {
      context.missing(_filePathMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('media_type')) {
      context.handle(_mediaTypeMeta,
          mediaType.isAcceptableOrUnknown(data['media_type']!, _mediaTypeMeta));
    } else if (isInserting) {
      context.missing(_mediaTypeMeta);
    }
    if (data.containsKey('tmdb_id')) {
      context.handle(_tmdbIdMeta,
          tmdbId.isAcceptableOrUnknown(data['tmdb_id']!, _tmdbIdMeta));
    }
    if (data.containsKey('show_tmdb_id')) {
      context.handle(
          _showTmdbIdMeta,
          showTmdbId.isAcceptableOrUnknown(
              data['show_tmdb_id']!, _showTmdbIdMeta));
    }
    if (data.containsKey('season_number')) {
      context.handle(
          _seasonNumberMeta,
          seasonNumber.isAcceptableOrUnknown(
              data['season_number']!, _seasonNumberMeta));
    }
    if (data.containsKey('episode_number')) {
      context.handle(
          _episodeNumberMeta,
          episodeNumber.isAcceptableOrUnknown(
              data['episode_number']!, _episodeNumberMeta));
    }
    if (data.containsKey('year')) {
      context.handle(
          _yearMeta, year.isAcceptableOrUnknown(data['year']!, _yearMeta));
    }
    if (data.containsKey('poster_path')) {
      context.handle(
          _posterPathMeta,
          posterPath.isAcceptableOrUnknown(
              data['poster_path']!, _posterPathMeta));
    }
    if (data.containsKey('resolution_tag')) {
      context.handle(
          _resolutionTagMeta,
          resolutionTag.isAcceptableOrUnknown(
              data['resolution_tag']!, _resolutionTagMeta));
    }
    if (data.containsKey('file_missing')) {
      context.handle(
          _fileMissingMeta,
          fileMissing.isAcceptableOrUnknown(
              data['file_missing']!, _fileMissingMeta));
    }
    if (data.containsKey('added_at')) {
      context.handle(_addedAtMeta,
          addedAt.isAcceptableOrUnknown(data['added_at']!, _addedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MediaItem map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MediaItem(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      filePath: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}file_path'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      mediaType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}media_type'])!,
      tmdbId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}tmdb_id']),
      showTmdbId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}show_tmdb_id']),
      seasonNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}season_number']),
      episodeNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}episode_number']),
      year: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}year']),
      posterPath: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}poster_path']),
      resolutionTag: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}resolution_tag']),
      fileMissing: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}file_missing'])!,
      addedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}added_at'])!,
    );
  }

  @override
  $MediaItemsTable createAlias(String alias) {
    return $MediaItemsTable(attachedDatabase, alias);
  }
}

class MediaItem extends DataClass implements Insertable<MediaItem> {
  final int id;
  final String filePath;
  final String title;

  /// 'movie' | 'episode'
  final String mediaType;
  final int? tmdbId;
  final int? showTmdbId;
  final int? seasonNumber;
  final int? episodeNumber;
  final int? year;
  final String? posterPath;

  /// '4K' | 'HDR' | '1080p' derived from filename tags.
  final String? resolutionTag;
  final bool fileMissing;
  final DateTime addedAt;
  const MediaItem(
      {required this.id,
      required this.filePath,
      required this.title,
      required this.mediaType,
      this.tmdbId,
      this.showTmdbId,
      this.seasonNumber,
      this.episodeNumber,
      this.year,
      this.posterPath,
      this.resolutionTag,
      required this.fileMissing,
      required this.addedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['file_path'] = Variable<String>(filePath);
    map['title'] = Variable<String>(title);
    map['media_type'] = Variable<String>(mediaType);
    if (!nullToAbsent || tmdbId != null) {
      map['tmdb_id'] = Variable<int>(tmdbId);
    }
    if (!nullToAbsent || showTmdbId != null) {
      map['show_tmdb_id'] = Variable<int>(showTmdbId);
    }
    if (!nullToAbsent || seasonNumber != null) {
      map['season_number'] = Variable<int>(seasonNumber);
    }
    if (!nullToAbsent || episodeNumber != null) {
      map['episode_number'] = Variable<int>(episodeNumber);
    }
    if (!nullToAbsent || year != null) {
      map['year'] = Variable<int>(year);
    }
    if (!nullToAbsent || posterPath != null) {
      map['poster_path'] = Variable<String>(posterPath);
    }
    if (!nullToAbsent || resolutionTag != null) {
      map['resolution_tag'] = Variable<String>(resolutionTag);
    }
    map['file_missing'] = Variable<bool>(fileMissing);
    map['added_at'] = Variable<DateTime>(addedAt);
    return map;
  }

  MediaItemsCompanion toCompanion(bool nullToAbsent) {
    return MediaItemsCompanion(
      id: Value(id),
      filePath: Value(filePath),
      title: Value(title),
      mediaType: Value(mediaType),
      tmdbId:
          tmdbId == null && nullToAbsent ? const Value.absent() : Value(tmdbId),
      showTmdbId: showTmdbId == null && nullToAbsent
          ? const Value.absent()
          : Value(showTmdbId),
      seasonNumber: seasonNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(seasonNumber),
      episodeNumber: episodeNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(episodeNumber),
      year: year == null && nullToAbsent ? const Value.absent() : Value(year),
      posterPath: posterPath == null && nullToAbsent
          ? const Value.absent()
          : Value(posterPath),
      resolutionTag: resolutionTag == null && nullToAbsent
          ? const Value.absent()
          : Value(resolutionTag),
      fileMissing: Value(fileMissing),
      addedAt: Value(addedAt),
    );
  }

  factory MediaItem.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MediaItem(
      id: serializer.fromJson<int>(json['id']),
      filePath: serializer.fromJson<String>(json['filePath']),
      title: serializer.fromJson<String>(json['title']),
      mediaType: serializer.fromJson<String>(json['mediaType']),
      tmdbId: serializer.fromJson<int?>(json['tmdbId']),
      showTmdbId: serializer.fromJson<int?>(json['showTmdbId']),
      seasonNumber: serializer.fromJson<int?>(json['seasonNumber']),
      episodeNumber: serializer.fromJson<int?>(json['episodeNumber']),
      year: serializer.fromJson<int?>(json['year']),
      posterPath: serializer.fromJson<String?>(json['posterPath']),
      resolutionTag: serializer.fromJson<String?>(json['resolutionTag']),
      fileMissing: serializer.fromJson<bool>(json['fileMissing']),
      addedAt: serializer.fromJson<DateTime>(json['addedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'filePath': serializer.toJson<String>(filePath),
      'title': serializer.toJson<String>(title),
      'mediaType': serializer.toJson<String>(mediaType),
      'tmdbId': serializer.toJson<int?>(tmdbId),
      'showTmdbId': serializer.toJson<int?>(showTmdbId),
      'seasonNumber': serializer.toJson<int?>(seasonNumber),
      'episodeNumber': serializer.toJson<int?>(episodeNumber),
      'year': serializer.toJson<int?>(year),
      'posterPath': serializer.toJson<String?>(posterPath),
      'resolutionTag': serializer.toJson<String?>(resolutionTag),
      'fileMissing': serializer.toJson<bool>(fileMissing),
      'addedAt': serializer.toJson<DateTime>(addedAt),
    };
  }

  MediaItem copyWith(
          {int? id,
          String? filePath,
          String? title,
          String? mediaType,
          Value<int?> tmdbId = const Value.absent(),
          Value<int?> showTmdbId = const Value.absent(),
          Value<int?> seasonNumber = const Value.absent(),
          Value<int?> episodeNumber = const Value.absent(),
          Value<int?> year = const Value.absent(),
          Value<String?> posterPath = const Value.absent(),
          Value<String?> resolutionTag = const Value.absent(),
          bool? fileMissing,
          DateTime? addedAt}) =>
      MediaItem(
        id: id ?? this.id,
        filePath: filePath ?? this.filePath,
        title: title ?? this.title,
        mediaType: mediaType ?? this.mediaType,
        tmdbId: tmdbId.present ? tmdbId.value : this.tmdbId,
        showTmdbId: showTmdbId.present ? showTmdbId.value : this.showTmdbId,
        seasonNumber:
            seasonNumber.present ? seasonNumber.value : this.seasonNumber,
        episodeNumber:
            episodeNumber.present ? episodeNumber.value : this.episodeNumber,
        year: year.present ? year.value : this.year,
        posterPath: posterPath.present ? posterPath.value : this.posterPath,
        resolutionTag:
            resolutionTag.present ? resolutionTag.value : this.resolutionTag,
        fileMissing: fileMissing ?? this.fileMissing,
        addedAt: addedAt ?? this.addedAt,
      );
  MediaItem copyWithCompanion(MediaItemsCompanion data) {
    return MediaItem(
      id: data.id.present ? data.id.value : this.id,
      filePath: data.filePath.present ? data.filePath.value : this.filePath,
      title: data.title.present ? data.title.value : this.title,
      mediaType: data.mediaType.present ? data.mediaType.value : this.mediaType,
      tmdbId: data.tmdbId.present ? data.tmdbId.value : this.tmdbId,
      showTmdbId:
          data.showTmdbId.present ? data.showTmdbId.value : this.showTmdbId,
      seasonNumber: data.seasonNumber.present
          ? data.seasonNumber.value
          : this.seasonNumber,
      episodeNumber: data.episodeNumber.present
          ? data.episodeNumber.value
          : this.episodeNumber,
      year: data.year.present ? data.year.value : this.year,
      posterPath:
          data.posterPath.present ? data.posterPath.value : this.posterPath,
      resolutionTag: data.resolutionTag.present
          ? data.resolutionTag.value
          : this.resolutionTag,
      fileMissing:
          data.fileMissing.present ? data.fileMissing.value : this.fileMissing,
      addedAt: data.addedAt.present ? data.addedAt.value : this.addedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MediaItem(')
          ..write('id: $id, ')
          ..write('filePath: $filePath, ')
          ..write('title: $title, ')
          ..write('mediaType: $mediaType, ')
          ..write('tmdbId: $tmdbId, ')
          ..write('showTmdbId: $showTmdbId, ')
          ..write('seasonNumber: $seasonNumber, ')
          ..write('episodeNumber: $episodeNumber, ')
          ..write('year: $year, ')
          ..write('posterPath: $posterPath, ')
          ..write('resolutionTag: $resolutionTag, ')
          ..write('fileMissing: $fileMissing, ')
          ..write('addedAt: $addedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      filePath,
      title,
      mediaType,
      tmdbId,
      showTmdbId,
      seasonNumber,
      episodeNumber,
      year,
      posterPath,
      resolutionTag,
      fileMissing,
      addedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MediaItem &&
          other.id == this.id &&
          other.filePath == this.filePath &&
          other.title == this.title &&
          other.mediaType == this.mediaType &&
          other.tmdbId == this.tmdbId &&
          other.showTmdbId == this.showTmdbId &&
          other.seasonNumber == this.seasonNumber &&
          other.episodeNumber == this.episodeNumber &&
          other.year == this.year &&
          other.posterPath == this.posterPath &&
          other.resolutionTag == this.resolutionTag &&
          other.fileMissing == this.fileMissing &&
          other.addedAt == this.addedAt);
}

class MediaItemsCompanion extends UpdateCompanion<MediaItem> {
  final Value<int> id;
  final Value<String> filePath;
  final Value<String> title;
  final Value<String> mediaType;
  final Value<int?> tmdbId;
  final Value<int?> showTmdbId;
  final Value<int?> seasonNumber;
  final Value<int?> episodeNumber;
  final Value<int?> year;
  final Value<String?> posterPath;
  final Value<String?> resolutionTag;
  final Value<bool> fileMissing;
  final Value<DateTime> addedAt;
  const MediaItemsCompanion({
    this.id = const Value.absent(),
    this.filePath = const Value.absent(),
    this.title = const Value.absent(),
    this.mediaType = const Value.absent(),
    this.tmdbId = const Value.absent(),
    this.showTmdbId = const Value.absent(),
    this.seasonNumber = const Value.absent(),
    this.episodeNumber = const Value.absent(),
    this.year = const Value.absent(),
    this.posterPath = const Value.absent(),
    this.resolutionTag = const Value.absent(),
    this.fileMissing = const Value.absent(),
    this.addedAt = const Value.absent(),
  });
  MediaItemsCompanion.insert({
    this.id = const Value.absent(),
    required String filePath,
    required String title,
    required String mediaType,
    this.tmdbId = const Value.absent(),
    this.showTmdbId = const Value.absent(),
    this.seasonNumber = const Value.absent(),
    this.episodeNumber = const Value.absent(),
    this.year = const Value.absent(),
    this.posterPath = const Value.absent(),
    this.resolutionTag = const Value.absent(),
    this.fileMissing = const Value.absent(),
    this.addedAt = const Value.absent(),
  })  : filePath = Value(filePath),
        title = Value(title),
        mediaType = Value(mediaType);
  static Insertable<MediaItem> custom({
    Expression<int>? id,
    Expression<String>? filePath,
    Expression<String>? title,
    Expression<String>? mediaType,
    Expression<int>? tmdbId,
    Expression<int>? showTmdbId,
    Expression<int>? seasonNumber,
    Expression<int>? episodeNumber,
    Expression<int>? year,
    Expression<String>? posterPath,
    Expression<String>? resolutionTag,
    Expression<bool>? fileMissing,
    Expression<DateTime>? addedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (filePath != null) 'file_path': filePath,
      if (title != null) 'title': title,
      if (mediaType != null) 'media_type': mediaType,
      if (tmdbId != null) 'tmdb_id': tmdbId,
      if (showTmdbId != null) 'show_tmdb_id': showTmdbId,
      if (seasonNumber != null) 'season_number': seasonNumber,
      if (episodeNumber != null) 'episode_number': episodeNumber,
      if (year != null) 'year': year,
      if (posterPath != null) 'poster_path': posterPath,
      if (resolutionTag != null) 'resolution_tag': resolutionTag,
      if (fileMissing != null) 'file_missing': fileMissing,
      if (addedAt != null) 'added_at': addedAt,
    });
  }

  MediaItemsCompanion copyWith(
      {Value<int>? id,
      Value<String>? filePath,
      Value<String>? title,
      Value<String>? mediaType,
      Value<int?>? tmdbId,
      Value<int?>? showTmdbId,
      Value<int?>? seasonNumber,
      Value<int?>? episodeNumber,
      Value<int?>? year,
      Value<String?>? posterPath,
      Value<String?>? resolutionTag,
      Value<bool>? fileMissing,
      Value<DateTime>? addedAt}) {
    return MediaItemsCompanion(
      id: id ?? this.id,
      filePath: filePath ?? this.filePath,
      title: title ?? this.title,
      mediaType: mediaType ?? this.mediaType,
      tmdbId: tmdbId ?? this.tmdbId,
      showTmdbId: showTmdbId ?? this.showTmdbId,
      seasonNumber: seasonNumber ?? this.seasonNumber,
      episodeNumber: episodeNumber ?? this.episodeNumber,
      year: year ?? this.year,
      posterPath: posterPath ?? this.posterPath,
      resolutionTag: resolutionTag ?? this.resolutionTag,
      fileMissing: fileMissing ?? this.fileMissing,
      addedAt: addedAt ?? this.addedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (filePath.present) {
      map['file_path'] = Variable<String>(filePath.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (mediaType.present) {
      map['media_type'] = Variable<String>(mediaType.value);
    }
    if (tmdbId.present) {
      map['tmdb_id'] = Variable<int>(tmdbId.value);
    }
    if (showTmdbId.present) {
      map['show_tmdb_id'] = Variable<int>(showTmdbId.value);
    }
    if (seasonNumber.present) {
      map['season_number'] = Variable<int>(seasonNumber.value);
    }
    if (episodeNumber.present) {
      map['episode_number'] = Variable<int>(episodeNumber.value);
    }
    if (year.present) {
      map['year'] = Variable<int>(year.value);
    }
    if (posterPath.present) {
      map['poster_path'] = Variable<String>(posterPath.value);
    }
    if (resolutionTag.present) {
      map['resolution_tag'] = Variable<String>(resolutionTag.value);
    }
    if (fileMissing.present) {
      map['file_missing'] = Variable<bool>(fileMissing.value);
    }
    if (addedAt.present) {
      map['added_at'] = Variable<DateTime>(addedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MediaItemsCompanion(')
          ..write('id: $id, ')
          ..write('filePath: $filePath, ')
          ..write('title: $title, ')
          ..write('mediaType: $mediaType, ')
          ..write('tmdbId: $tmdbId, ')
          ..write('showTmdbId: $showTmdbId, ')
          ..write('seasonNumber: $seasonNumber, ')
          ..write('episodeNumber: $episodeNumber, ')
          ..write('year: $year, ')
          ..write('posterPath: $posterPath, ')
          ..write('resolutionTag: $resolutionTag, ')
          ..write('fileMissing: $fileMissing, ')
          ..write('addedAt: $addedAt')
          ..write(')'))
        .toString();
  }
}

class $WatchHistoryEntriesTable extends WatchHistoryEntries
    with TableInfo<$WatchHistoryEntriesTable, WatchHistoryEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $WatchHistoryEntriesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _mediaItemIdMeta =
      const VerificationMeta('mediaItemId');
  @override
  late final GeneratedColumn<int> mediaItemId = GeneratedColumn<int>(
      'media_item_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _positionMsMeta =
      const VerificationMeta('positionMs');
  @override
  late final GeneratedColumn<int> positionMs = GeneratedColumn<int>(
      'position_ms', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _durationMsMeta =
      const VerificationMeta('durationMs');
  @override
  late final GeneratedColumn<int> durationMs = GeneratedColumn<int>(
      'duration_ms', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _watchedMeta =
      const VerificationMeta('watched');
  @override
  late final GeneratedColumn<bool> watched = GeneratedColumn<bool>(
      'watched', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("watched" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _lastWatchedAtMeta =
      const VerificationMeta('lastWatchedAt');
  @override
  late final GeneratedColumn<DateTime> lastWatchedAt =
      GeneratedColumn<DateTime>('last_watched_at', aliasedName, false,
          type: DriftSqlType.dateTime,
          requiredDuringInsert: false,
          defaultValue: currentDateAndTime);
  @override
  List<GeneratedColumn> get $columns =>
      [id, mediaItemId, positionMs, durationMs, watched, lastWatchedAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'watch_history_entries';
  @override
  VerificationContext validateIntegrity(Insertable<WatchHistoryEntry> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('media_item_id')) {
      context.handle(
          _mediaItemIdMeta,
          mediaItemId.isAcceptableOrUnknown(
              data['media_item_id']!, _mediaItemIdMeta));
    } else if (isInserting) {
      context.missing(_mediaItemIdMeta);
    }
    if (data.containsKey('position_ms')) {
      context.handle(
          _positionMsMeta,
          positionMs.isAcceptableOrUnknown(
              data['position_ms']!, _positionMsMeta));
    }
    if (data.containsKey('duration_ms')) {
      context.handle(
          _durationMsMeta,
          durationMs.isAcceptableOrUnknown(
              data['duration_ms']!, _durationMsMeta));
    }
    if (data.containsKey('watched')) {
      context.handle(_watchedMeta,
          watched.isAcceptableOrUnknown(data['watched']!, _watchedMeta));
    }
    if (data.containsKey('last_watched_at')) {
      context.handle(
          _lastWatchedAtMeta,
          lastWatchedAt.isAcceptableOrUnknown(
              data['last_watched_at']!, _lastWatchedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  WatchHistoryEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return WatchHistoryEntry(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      mediaItemId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}media_item_id'])!,
      positionMs: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}position_ms'])!,
      durationMs: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}duration_ms'])!,
      watched: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}watched'])!,
      lastWatchedAt: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}last_watched_at'])!,
    );
  }

  @override
  $WatchHistoryEntriesTable createAlias(String alias) {
    return $WatchHistoryEntriesTable(attachedDatabase, alias);
  }
}

class WatchHistoryEntry extends DataClass
    implements Insertable<WatchHistoryEntry> {
  final int id;
  final int mediaItemId;
  final int positionMs;
  final int durationMs;
  final bool watched;
  final DateTime lastWatchedAt;
  const WatchHistoryEntry(
      {required this.id,
      required this.mediaItemId,
      required this.positionMs,
      required this.durationMs,
      required this.watched,
      required this.lastWatchedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['media_item_id'] = Variable<int>(mediaItemId);
    map['position_ms'] = Variable<int>(positionMs);
    map['duration_ms'] = Variable<int>(durationMs);
    map['watched'] = Variable<bool>(watched);
    map['last_watched_at'] = Variable<DateTime>(lastWatchedAt);
    return map;
  }

  WatchHistoryEntriesCompanion toCompanion(bool nullToAbsent) {
    return WatchHistoryEntriesCompanion(
      id: Value(id),
      mediaItemId: Value(mediaItemId),
      positionMs: Value(positionMs),
      durationMs: Value(durationMs),
      watched: Value(watched),
      lastWatchedAt: Value(lastWatchedAt),
    );
  }

  factory WatchHistoryEntry.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return WatchHistoryEntry(
      id: serializer.fromJson<int>(json['id']),
      mediaItemId: serializer.fromJson<int>(json['mediaItemId']),
      positionMs: serializer.fromJson<int>(json['positionMs']),
      durationMs: serializer.fromJson<int>(json['durationMs']),
      watched: serializer.fromJson<bool>(json['watched']),
      lastWatchedAt: serializer.fromJson<DateTime>(json['lastWatchedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'mediaItemId': serializer.toJson<int>(mediaItemId),
      'positionMs': serializer.toJson<int>(positionMs),
      'durationMs': serializer.toJson<int>(durationMs),
      'watched': serializer.toJson<bool>(watched),
      'lastWatchedAt': serializer.toJson<DateTime>(lastWatchedAt),
    };
  }

  WatchHistoryEntry copyWith(
          {int? id,
          int? mediaItemId,
          int? positionMs,
          int? durationMs,
          bool? watched,
          DateTime? lastWatchedAt}) =>
      WatchHistoryEntry(
        id: id ?? this.id,
        mediaItemId: mediaItemId ?? this.mediaItemId,
        positionMs: positionMs ?? this.positionMs,
        durationMs: durationMs ?? this.durationMs,
        watched: watched ?? this.watched,
        lastWatchedAt: lastWatchedAt ?? this.lastWatchedAt,
      );
  WatchHistoryEntry copyWithCompanion(WatchHistoryEntriesCompanion data) {
    return WatchHistoryEntry(
      id: data.id.present ? data.id.value : this.id,
      mediaItemId:
          data.mediaItemId.present ? data.mediaItemId.value : this.mediaItemId,
      positionMs:
          data.positionMs.present ? data.positionMs.value : this.positionMs,
      durationMs:
          data.durationMs.present ? data.durationMs.value : this.durationMs,
      watched: data.watched.present ? data.watched.value : this.watched,
      lastWatchedAt: data.lastWatchedAt.present
          ? data.lastWatchedAt.value
          : this.lastWatchedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('WatchHistoryEntry(')
          ..write('id: $id, ')
          ..write('mediaItemId: $mediaItemId, ')
          ..write('positionMs: $positionMs, ')
          ..write('durationMs: $durationMs, ')
          ..write('watched: $watched, ')
          ..write('lastWatchedAt: $lastWatchedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, mediaItemId, positionMs, durationMs, watched, lastWatchedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is WatchHistoryEntry &&
          other.id == this.id &&
          other.mediaItemId == this.mediaItemId &&
          other.positionMs == this.positionMs &&
          other.durationMs == this.durationMs &&
          other.watched == this.watched &&
          other.lastWatchedAt == this.lastWatchedAt);
}

class WatchHistoryEntriesCompanion extends UpdateCompanion<WatchHistoryEntry> {
  final Value<int> id;
  final Value<int> mediaItemId;
  final Value<int> positionMs;
  final Value<int> durationMs;
  final Value<bool> watched;
  final Value<DateTime> lastWatchedAt;
  const WatchHistoryEntriesCompanion({
    this.id = const Value.absent(),
    this.mediaItemId = const Value.absent(),
    this.positionMs = const Value.absent(),
    this.durationMs = const Value.absent(),
    this.watched = const Value.absent(),
    this.lastWatchedAt = const Value.absent(),
  });
  WatchHistoryEntriesCompanion.insert({
    this.id = const Value.absent(),
    required int mediaItemId,
    this.positionMs = const Value.absent(),
    this.durationMs = const Value.absent(),
    this.watched = const Value.absent(),
    this.lastWatchedAt = const Value.absent(),
  }) : mediaItemId = Value(mediaItemId);
  static Insertable<WatchHistoryEntry> custom({
    Expression<int>? id,
    Expression<int>? mediaItemId,
    Expression<int>? positionMs,
    Expression<int>? durationMs,
    Expression<bool>? watched,
    Expression<DateTime>? lastWatchedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (mediaItemId != null) 'media_item_id': mediaItemId,
      if (positionMs != null) 'position_ms': positionMs,
      if (durationMs != null) 'duration_ms': durationMs,
      if (watched != null) 'watched': watched,
      if (lastWatchedAt != null) 'last_watched_at': lastWatchedAt,
    });
  }

  WatchHistoryEntriesCompanion copyWith(
      {Value<int>? id,
      Value<int>? mediaItemId,
      Value<int>? positionMs,
      Value<int>? durationMs,
      Value<bool>? watched,
      Value<DateTime>? lastWatchedAt}) {
    return WatchHistoryEntriesCompanion(
      id: id ?? this.id,
      mediaItemId: mediaItemId ?? this.mediaItemId,
      positionMs: positionMs ?? this.positionMs,
      durationMs: durationMs ?? this.durationMs,
      watched: watched ?? this.watched,
      lastWatchedAt: lastWatchedAt ?? this.lastWatchedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (mediaItemId.present) {
      map['media_item_id'] = Variable<int>(mediaItemId.value);
    }
    if (positionMs.present) {
      map['position_ms'] = Variable<int>(positionMs.value);
    }
    if (durationMs.present) {
      map['duration_ms'] = Variable<int>(durationMs.value);
    }
    if (watched.present) {
      map['watched'] = Variable<bool>(watched.value);
    }
    if (lastWatchedAt.present) {
      map['last_watched_at'] = Variable<DateTime>(lastWatchedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('WatchHistoryEntriesCompanion(')
          ..write('id: $id, ')
          ..write('mediaItemId: $mediaItemId, ')
          ..write('positionMs: $positionMs, ')
          ..write('durationMs: $durationMs, ')
          ..write('watched: $watched, ')
          ..write('lastWatchedAt: $lastWatchedAt')
          ..write(')'))
        .toString();
  }
}

class $AppPreferencesTable extends AppPreferences
    with TableInfo<$AppPreferencesTable, AppPreference> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AppPreferencesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _keyMeta = const VerificationMeta('key');
  @override
  late final GeneratedColumn<String> key = GeneratedColumn<String>(
      'key', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<String> value = GeneratedColumn<String>(
      'value', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [key, value];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'app_preferences';
  @override
  VerificationContext validateIntegrity(Insertable<AppPreference> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('key')) {
      context.handle(
          _keyMeta, key.isAcceptableOrUnknown(data['key']!, _keyMeta));
    } else if (isInserting) {
      context.missing(_keyMeta);
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {key};
  @override
  AppPreference map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AppPreference(
      key: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}key'])!,
      value: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}value'])!,
    );
  }

  @override
  $AppPreferencesTable createAlias(String alias) {
    return $AppPreferencesTable(attachedDatabase, alias);
  }
}

class AppPreference extends DataClass implements Insertable<AppPreference> {
  final String key;
  final String value;
  const AppPreference({required this.key, required this.value});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['key'] = Variable<String>(key);
    map['value'] = Variable<String>(value);
    return map;
  }

  AppPreferencesCompanion toCompanion(bool nullToAbsent) {
    return AppPreferencesCompanion(
      key: Value(key),
      value: Value(value),
    );
  }

  factory AppPreference.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AppPreference(
      key: serializer.fromJson<String>(json['key']),
      value: serializer.fromJson<String>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'key': serializer.toJson<String>(key),
      'value': serializer.toJson<String>(value),
    };
  }

  AppPreference copyWith({String? key, String? value}) => AppPreference(
        key: key ?? this.key,
        value: value ?? this.value,
      );
  AppPreference copyWithCompanion(AppPreferencesCompanion data) {
    return AppPreference(
      key: data.key.present ? data.key.value : this.key,
      value: data.value.present ? data.value.value : this.value,
    );
  }

  @override
  String toString() {
    return (StringBuffer('AppPreference(')
          ..write('key: $key, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(key, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AppPreference &&
          other.key == this.key &&
          other.value == this.value);
}

class AppPreferencesCompanion extends UpdateCompanion<AppPreference> {
  final Value<String> key;
  final Value<String> value;
  final Value<int> rowid;
  const AppPreferencesCompanion({
    this.key = const Value.absent(),
    this.value = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  AppPreferencesCompanion.insert({
    required String key,
    required String value,
    this.rowid = const Value.absent(),
  })  : key = Value(key),
        value = Value(value);
  static Insertable<AppPreference> custom({
    Expression<String>? key,
    Expression<String>? value,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (key != null) 'key': key,
      if (value != null) 'value': value,
      if (rowid != null) 'rowid': rowid,
    });
  }

  AppPreferencesCompanion copyWith(
      {Value<String>? key, Value<String>? value, Value<int>? rowid}) {
    return AppPreferencesCompanion(
      key: key ?? this.key,
      value: value ?? this.value,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (key.present) {
      map['key'] = Variable<String>(key.value);
    }
    if (value.present) {
      map['value'] = Variable<String>(value.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AppPreferencesCompanion(')
          ..write('key: $key, ')
          ..write('value: $value, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SubtitleSearchCacheTable extends SubtitleSearchCache
    with TableInfo<$SubtitleSearchCacheTable, SubtitleSearchCacheData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SubtitleSearchCacheTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _tmdbIdMeta = const VerificationMeta('tmdbId');
  @override
  late final GeneratedColumn<int> tmdbId = GeneratedColumn<int>(
      'tmdb_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _languageMeta =
      const VerificationMeta('language');
  @override
  late final GeneratedColumn<String> language = GeneratedColumn<String>(
      'language', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _payloadMeta =
      const VerificationMeta('payload');
  @override
  late final GeneratedColumn<String> payload = GeneratedColumn<String>(
      'payload', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _fetchedAtMeta =
      const VerificationMeta('fetchedAt');
  @override
  late final GeneratedColumn<DateTime> fetchedAt = GeneratedColumn<DateTime>(
      'fetched_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  @override
  List<GeneratedColumn> get $columns =>
      [id, tmdbId, language, payload, fetchedAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'subtitle_search_cache';
  @override
  VerificationContext validateIntegrity(
      Insertable<SubtitleSearchCacheData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('tmdb_id')) {
      context.handle(_tmdbIdMeta,
          tmdbId.isAcceptableOrUnknown(data['tmdb_id']!, _tmdbIdMeta));
    } else if (isInserting) {
      context.missing(_tmdbIdMeta);
    }
    if (data.containsKey('language')) {
      context.handle(_languageMeta,
          language.isAcceptableOrUnknown(data['language']!, _languageMeta));
    } else if (isInserting) {
      context.missing(_languageMeta);
    }
    if (data.containsKey('payload')) {
      context.handle(_payloadMeta,
          payload.isAcceptableOrUnknown(data['payload']!, _payloadMeta));
    } else if (isInserting) {
      context.missing(_payloadMeta);
    }
    if (data.containsKey('fetched_at')) {
      context.handle(_fetchedAtMeta,
          fetchedAt.isAcceptableOrUnknown(data['fetched_at']!, _fetchedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SubtitleSearchCacheData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SubtitleSearchCacheData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      tmdbId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}tmdb_id'])!,
      language: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}language'])!,
      payload: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}payload'])!,
      fetchedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}fetched_at'])!,
    );
  }

  @override
  $SubtitleSearchCacheTable createAlias(String alias) {
    return $SubtitleSearchCacheTable(attachedDatabase, alias);
  }
}

class SubtitleSearchCacheData extends DataClass
    implements Insertable<SubtitleSearchCacheData> {
  final int id;
  final int tmdbId;
  final String language;

  /// Raw JSON payload of the OpenSubtitles search response.
  final String payload;
  final DateTime fetchedAt;
  const SubtitleSearchCacheData(
      {required this.id,
      required this.tmdbId,
      required this.language,
      required this.payload,
      required this.fetchedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['tmdb_id'] = Variable<int>(tmdbId);
    map['language'] = Variable<String>(language);
    map['payload'] = Variable<String>(payload);
    map['fetched_at'] = Variable<DateTime>(fetchedAt);
    return map;
  }

  SubtitleSearchCacheCompanion toCompanion(bool nullToAbsent) {
    return SubtitleSearchCacheCompanion(
      id: Value(id),
      tmdbId: Value(tmdbId),
      language: Value(language),
      payload: Value(payload),
      fetchedAt: Value(fetchedAt),
    );
  }

  factory SubtitleSearchCacheData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SubtitleSearchCacheData(
      id: serializer.fromJson<int>(json['id']),
      tmdbId: serializer.fromJson<int>(json['tmdbId']),
      language: serializer.fromJson<String>(json['language']),
      payload: serializer.fromJson<String>(json['payload']),
      fetchedAt: serializer.fromJson<DateTime>(json['fetchedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'tmdbId': serializer.toJson<int>(tmdbId),
      'language': serializer.toJson<String>(language),
      'payload': serializer.toJson<String>(payload),
      'fetchedAt': serializer.toJson<DateTime>(fetchedAt),
    };
  }

  SubtitleSearchCacheData copyWith(
          {int? id,
          int? tmdbId,
          String? language,
          String? payload,
          DateTime? fetchedAt}) =>
      SubtitleSearchCacheData(
        id: id ?? this.id,
        tmdbId: tmdbId ?? this.tmdbId,
        language: language ?? this.language,
        payload: payload ?? this.payload,
        fetchedAt: fetchedAt ?? this.fetchedAt,
      );
  SubtitleSearchCacheData copyWithCompanion(SubtitleSearchCacheCompanion data) {
    return SubtitleSearchCacheData(
      id: data.id.present ? data.id.value : this.id,
      tmdbId: data.tmdbId.present ? data.tmdbId.value : this.tmdbId,
      language: data.language.present ? data.language.value : this.language,
      payload: data.payload.present ? data.payload.value : this.payload,
      fetchedAt: data.fetchedAt.present ? data.fetchedAt.value : this.fetchedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SubtitleSearchCacheData(')
          ..write('id: $id, ')
          ..write('tmdbId: $tmdbId, ')
          ..write('language: $language, ')
          ..write('payload: $payload, ')
          ..write('fetchedAt: $fetchedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, tmdbId, language, payload, fetchedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SubtitleSearchCacheData &&
          other.id == this.id &&
          other.tmdbId == this.tmdbId &&
          other.language == this.language &&
          other.payload == this.payload &&
          other.fetchedAt == this.fetchedAt);
}

class SubtitleSearchCacheCompanion
    extends UpdateCompanion<SubtitleSearchCacheData> {
  final Value<int> id;
  final Value<int> tmdbId;
  final Value<String> language;
  final Value<String> payload;
  final Value<DateTime> fetchedAt;
  const SubtitleSearchCacheCompanion({
    this.id = const Value.absent(),
    this.tmdbId = const Value.absent(),
    this.language = const Value.absent(),
    this.payload = const Value.absent(),
    this.fetchedAt = const Value.absent(),
  });
  SubtitleSearchCacheCompanion.insert({
    this.id = const Value.absent(),
    required int tmdbId,
    required String language,
    required String payload,
    this.fetchedAt = const Value.absent(),
  })  : tmdbId = Value(tmdbId),
        language = Value(language),
        payload = Value(payload);
  static Insertable<SubtitleSearchCacheData> custom({
    Expression<int>? id,
    Expression<int>? tmdbId,
    Expression<String>? language,
    Expression<String>? payload,
    Expression<DateTime>? fetchedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (tmdbId != null) 'tmdb_id': tmdbId,
      if (language != null) 'language': language,
      if (payload != null) 'payload': payload,
      if (fetchedAt != null) 'fetched_at': fetchedAt,
    });
  }

  SubtitleSearchCacheCompanion copyWith(
      {Value<int>? id,
      Value<int>? tmdbId,
      Value<String>? language,
      Value<String>? payload,
      Value<DateTime>? fetchedAt}) {
    return SubtitleSearchCacheCompanion(
      id: id ?? this.id,
      tmdbId: tmdbId ?? this.tmdbId,
      language: language ?? this.language,
      payload: payload ?? this.payload,
      fetchedAt: fetchedAt ?? this.fetchedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (tmdbId.present) {
      map['tmdb_id'] = Variable<int>(tmdbId.value);
    }
    if (language.present) {
      map['language'] = Variable<String>(language.value);
    }
    if (payload.present) {
      map['payload'] = Variable<String>(payload.value);
    }
    if (fetchedAt.present) {
      map['fetched_at'] = Variable<DateTime>(fetchedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SubtitleSearchCacheCompanion(')
          ..write('id: $id, ')
          ..write('tmdbId: $tmdbId, ')
          ..write('language: $language, ')
          ..write('payload: $payload, ')
          ..write('fetchedAt: $fetchedAt')
          ..write(')'))
        .toString();
  }
}

abstract class _$FluxDatabase extends GeneratedDatabase {
  _$FluxDatabase(QueryExecutor e) : super(e);
  $FluxDatabaseManager get managers => $FluxDatabaseManager(this);
  late final $LibraryFoldersTable libraryFolders = $LibraryFoldersTable(this);
  late final $MediaItemsTable mediaItems = $MediaItemsTable(this);
  late final $WatchHistoryEntriesTable watchHistoryEntries =
      $WatchHistoryEntriesTable(this);
  late final $AppPreferencesTable appPreferences = $AppPreferencesTable(this);
  late final $SubtitleSearchCacheTable subtitleSearchCache =
      $SubtitleSearchCacheTable(this);
  late final MediaDao mediaDao = MediaDao(this as FluxDatabase);
  late final HistoryDao historyDao = HistoryDao(this as FluxDatabase);
  late final PreferencesDao preferencesDao =
      PreferencesDao(this as FluxDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        libraryFolders,
        mediaItems,
        watchHistoryEntries,
        appPreferences,
        subtitleSearchCache
      ];
}

typedef $$LibraryFoldersTableCreateCompanionBuilder = LibraryFoldersCompanion
    Function({
  Value<int> id,
  required String path,
  Value<DateTime> addedAt,
});
typedef $$LibraryFoldersTableUpdateCompanionBuilder = LibraryFoldersCompanion
    Function({
  Value<int> id,
  Value<String> path,
  Value<DateTime> addedAt,
});

class $$LibraryFoldersTableFilterComposer
    extends Composer<_$FluxDatabase, $LibraryFoldersTable> {
  $$LibraryFoldersTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get path => $composableBuilder(
      column: $table.path, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get addedAt => $composableBuilder(
      column: $table.addedAt, builder: (column) => ColumnFilters(column));
}

class $$LibraryFoldersTableOrderingComposer
    extends Composer<_$FluxDatabase, $LibraryFoldersTable> {
  $$LibraryFoldersTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get path => $composableBuilder(
      column: $table.path, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get addedAt => $composableBuilder(
      column: $table.addedAt, builder: (column) => ColumnOrderings(column));
}

class $$LibraryFoldersTableAnnotationComposer
    extends Composer<_$FluxDatabase, $LibraryFoldersTable> {
  $$LibraryFoldersTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get path =>
      $composableBuilder(column: $table.path, builder: (column) => column);

  GeneratedColumn<DateTime> get addedAt =>
      $composableBuilder(column: $table.addedAt, builder: (column) => column);
}

class $$LibraryFoldersTableTableManager extends RootTableManager<
    _$FluxDatabase,
    $LibraryFoldersTable,
    LibraryFolder,
    $$LibraryFoldersTableFilterComposer,
    $$LibraryFoldersTableOrderingComposer,
    $$LibraryFoldersTableAnnotationComposer,
    $$LibraryFoldersTableCreateCompanionBuilder,
    $$LibraryFoldersTableUpdateCompanionBuilder,
    (
      LibraryFolder,
      BaseReferences<_$FluxDatabase, $LibraryFoldersTable, LibraryFolder>
    ),
    LibraryFolder,
    PrefetchHooks Function()> {
  $$LibraryFoldersTableTableManager(
      _$FluxDatabase db, $LibraryFoldersTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$LibraryFoldersTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$LibraryFoldersTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$LibraryFoldersTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> path = const Value.absent(),
            Value<DateTime> addedAt = const Value.absent(),
          }) =>
              LibraryFoldersCompanion(
            id: id,
            path: path,
            addedAt: addedAt,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String path,
            Value<DateTime> addedAt = const Value.absent(),
          }) =>
              LibraryFoldersCompanion.insert(
            id: id,
            path: path,
            addedAt: addedAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$LibraryFoldersTableProcessedTableManager = ProcessedTableManager<
    _$FluxDatabase,
    $LibraryFoldersTable,
    LibraryFolder,
    $$LibraryFoldersTableFilterComposer,
    $$LibraryFoldersTableOrderingComposer,
    $$LibraryFoldersTableAnnotationComposer,
    $$LibraryFoldersTableCreateCompanionBuilder,
    $$LibraryFoldersTableUpdateCompanionBuilder,
    (
      LibraryFolder,
      BaseReferences<_$FluxDatabase, $LibraryFoldersTable, LibraryFolder>
    ),
    LibraryFolder,
    PrefetchHooks Function()>;
typedef $$MediaItemsTableCreateCompanionBuilder = MediaItemsCompanion Function({
  Value<int> id,
  required String filePath,
  required String title,
  required String mediaType,
  Value<int?> tmdbId,
  Value<int?> showTmdbId,
  Value<int?> seasonNumber,
  Value<int?> episodeNumber,
  Value<int?> year,
  Value<String?> posterPath,
  Value<String?> resolutionTag,
  Value<bool> fileMissing,
  Value<DateTime> addedAt,
});
typedef $$MediaItemsTableUpdateCompanionBuilder = MediaItemsCompanion Function({
  Value<int> id,
  Value<String> filePath,
  Value<String> title,
  Value<String> mediaType,
  Value<int?> tmdbId,
  Value<int?> showTmdbId,
  Value<int?> seasonNumber,
  Value<int?> episodeNumber,
  Value<int?> year,
  Value<String?> posterPath,
  Value<String?> resolutionTag,
  Value<bool> fileMissing,
  Value<DateTime> addedAt,
});

class $$MediaItemsTableFilterComposer
    extends Composer<_$FluxDatabase, $MediaItemsTable> {
  $$MediaItemsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get filePath => $composableBuilder(
      column: $table.filePath, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get mediaType => $composableBuilder(
      column: $table.mediaType, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get tmdbId => $composableBuilder(
      column: $table.tmdbId, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get showTmdbId => $composableBuilder(
      column: $table.showTmdbId, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get seasonNumber => $composableBuilder(
      column: $table.seasonNumber, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get episodeNumber => $composableBuilder(
      column: $table.episodeNumber, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get year => $composableBuilder(
      column: $table.year, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get posterPath => $composableBuilder(
      column: $table.posterPath, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get resolutionTag => $composableBuilder(
      column: $table.resolutionTag, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get fileMissing => $composableBuilder(
      column: $table.fileMissing, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get addedAt => $composableBuilder(
      column: $table.addedAt, builder: (column) => ColumnFilters(column));
}

class $$MediaItemsTableOrderingComposer
    extends Composer<_$FluxDatabase, $MediaItemsTable> {
  $$MediaItemsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get filePath => $composableBuilder(
      column: $table.filePath, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get mediaType => $composableBuilder(
      column: $table.mediaType, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get tmdbId => $composableBuilder(
      column: $table.tmdbId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get showTmdbId => $composableBuilder(
      column: $table.showTmdbId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get seasonNumber => $composableBuilder(
      column: $table.seasonNumber,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get episodeNumber => $composableBuilder(
      column: $table.episodeNumber,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get year => $composableBuilder(
      column: $table.year, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get posterPath => $composableBuilder(
      column: $table.posterPath, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get resolutionTag => $composableBuilder(
      column: $table.resolutionTag,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get fileMissing => $composableBuilder(
      column: $table.fileMissing, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get addedAt => $composableBuilder(
      column: $table.addedAt, builder: (column) => ColumnOrderings(column));
}

class $$MediaItemsTableAnnotationComposer
    extends Composer<_$FluxDatabase, $MediaItemsTable> {
  $$MediaItemsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get filePath =>
      $composableBuilder(column: $table.filePath, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get mediaType =>
      $composableBuilder(column: $table.mediaType, builder: (column) => column);

  GeneratedColumn<int> get tmdbId =>
      $composableBuilder(column: $table.tmdbId, builder: (column) => column);

  GeneratedColumn<int> get showTmdbId => $composableBuilder(
      column: $table.showTmdbId, builder: (column) => column);

  GeneratedColumn<int> get seasonNumber => $composableBuilder(
      column: $table.seasonNumber, builder: (column) => column);

  GeneratedColumn<int> get episodeNumber => $composableBuilder(
      column: $table.episodeNumber, builder: (column) => column);

  GeneratedColumn<int> get year =>
      $composableBuilder(column: $table.year, builder: (column) => column);

  GeneratedColumn<String> get posterPath => $composableBuilder(
      column: $table.posterPath, builder: (column) => column);

  GeneratedColumn<String> get resolutionTag => $composableBuilder(
      column: $table.resolutionTag, builder: (column) => column);

  GeneratedColumn<bool> get fileMissing => $composableBuilder(
      column: $table.fileMissing, builder: (column) => column);

  GeneratedColumn<DateTime> get addedAt =>
      $composableBuilder(column: $table.addedAt, builder: (column) => column);
}

class $$MediaItemsTableTableManager extends RootTableManager<
    _$FluxDatabase,
    $MediaItemsTable,
    MediaItem,
    $$MediaItemsTableFilterComposer,
    $$MediaItemsTableOrderingComposer,
    $$MediaItemsTableAnnotationComposer,
    $$MediaItemsTableCreateCompanionBuilder,
    $$MediaItemsTableUpdateCompanionBuilder,
    (MediaItem, BaseReferences<_$FluxDatabase, $MediaItemsTable, MediaItem>),
    MediaItem,
    PrefetchHooks Function()> {
  $$MediaItemsTableTableManager(_$FluxDatabase db, $MediaItemsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$MediaItemsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$MediaItemsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$MediaItemsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> filePath = const Value.absent(),
            Value<String> title = const Value.absent(),
            Value<String> mediaType = const Value.absent(),
            Value<int?> tmdbId = const Value.absent(),
            Value<int?> showTmdbId = const Value.absent(),
            Value<int?> seasonNumber = const Value.absent(),
            Value<int?> episodeNumber = const Value.absent(),
            Value<int?> year = const Value.absent(),
            Value<String?> posterPath = const Value.absent(),
            Value<String?> resolutionTag = const Value.absent(),
            Value<bool> fileMissing = const Value.absent(),
            Value<DateTime> addedAt = const Value.absent(),
          }) =>
              MediaItemsCompanion(
            id: id,
            filePath: filePath,
            title: title,
            mediaType: mediaType,
            tmdbId: tmdbId,
            showTmdbId: showTmdbId,
            seasonNumber: seasonNumber,
            episodeNumber: episodeNumber,
            year: year,
            posterPath: posterPath,
            resolutionTag: resolutionTag,
            fileMissing: fileMissing,
            addedAt: addedAt,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String filePath,
            required String title,
            required String mediaType,
            Value<int?> tmdbId = const Value.absent(),
            Value<int?> showTmdbId = const Value.absent(),
            Value<int?> seasonNumber = const Value.absent(),
            Value<int?> episodeNumber = const Value.absent(),
            Value<int?> year = const Value.absent(),
            Value<String?> posterPath = const Value.absent(),
            Value<String?> resolutionTag = const Value.absent(),
            Value<bool> fileMissing = const Value.absent(),
            Value<DateTime> addedAt = const Value.absent(),
          }) =>
              MediaItemsCompanion.insert(
            id: id,
            filePath: filePath,
            title: title,
            mediaType: mediaType,
            tmdbId: tmdbId,
            showTmdbId: showTmdbId,
            seasonNumber: seasonNumber,
            episodeNumber: episodeNumber,
            year: year,
            posterPath: posterPath,
            resolutionTag: resolutionTag,
            fileMissing: fileMissing,
            addedAt: addedAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$MediaItemsTableProcessedTableManager = ProcessedTableManager<
    _$FluxDatabase,
    $MediaItemsTable,
    MediaItem,
    $$MediaItemsTableFilterComposer,
    $$MediaItemsTableOrderingComposer,
    $$MediaItemsTableAnnotationComposer,
    $$MediaItemsTableCreateCompanionBuilder,
    $$MediaItemsTableUpdateCompanionBuilder,
    (MediaItem, BaseReferences<_$FluxDatabase, $MediaItemsTable, MediaItem>),
    MediaItem,
    PrefetchHooks Function()>;
typedef $$WatchHistoryEntriesTableCreateCompanionBuilder
    = WatchHistoryEntriesCompanion Function({
  Value<int> id,
  required int mediaItemId,
  Value<int> positionMs,
  Value<int> durationMs,
  Value<bool> watched,
  Value<DateTime> lastWatchedAt,
});
typedef $$WatchHistoryEntriesTableUpdateCompanionBuilder
    = WatchHistoryEntriesCompanion Function({
  Value<int> id,
  Value<int> mediaItemId,
  Value<int> positionMs,
  Value<int> durationMs,
  Value<bool> watched,
  Value<DateTime> lastWatchedAt,
});

class $$WatchHistoryEntriesTableFilterComposer
    extends Composer<_$FluxDatabase, $WatchHistoryEntriesTable> {
  $$WatchHistoryEntriesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get mediaItemId => $composableBuilder(
      column: $table.mediaItemId, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get positionMs => $composableBuilder(
      column: $table.positionMs, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get durationMs => $composableBuilder(
      column: $table.durationMs, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get watched => $composableBuilder(
      column: $table.watched, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get lastWatchedAt => $composableBuilder(
      column: $table.lastWatchedAt, builder: (column) => ColumnFilters(column));
}

class $$WatchHistoryEntriesTableOrderingComposer
    extends Composer<_$FluxDatabase, $WatchHistoryEntriesTable> {
  $$WatchHistoryEntriesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get mediaItemId => $composableBuilder(
      column: $table.mediaItemId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get positionMs => $composableBuilder(
      column: $table.positionMs, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get durationMs => $composableBuilder(
      column: $table.durationMs, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get watched => $composableBuilder(
      column: $table.watched, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get lastWatchedAt => $composableBuilder(
      column: $table.lastWatchedAt,
      builder: (column) => ColumnOrderings(column));
}

class $$WatchHistoryEntriesTableAnnotationComposer
    extends Composer<_$FluxDatabase, $WatchHistoryEntriesTable> {
  $$WatchHistoryEntriesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get mediaItemId => $composableBuilder(
      column: $table.mediaItemId, builder: (column) => column);

  GeneratedColumn<int> get positionMs => $composableBuilder(
      column: $table.positionMs, builder: (column) => column);

  GeneratedColumn<int> get durationMs => $composableBuilder(
      column: $table.durationMs, builder: (column) => column);

  GeneratedColumn<bool> get watched =>
      $composableBuilder(column: $table.watched, builder: (column) => column);

  GeneratedColumn<DateTime> get lastWatchedAt => $composableBuilder(
      column: $table.lastWatchedAt, builder: (column) => column);
}

class $$WatchHistoryEntriesTableTableManager extends RootTableManager<
    _$FluxDatabase,
    $WatchHistoryEntriesTable,
    WatchHistoryEntry,
    $$WatchHistoryEntriesTableFilterComposer,
    $$WatchHistoryEntriesTableOrderingComposer,
    $$WatchHistoryEntriesTableAnnotationComposer,
    $$WatchHistoryEntriesTableCreateCompanionBuilder,
    $$WatchHistoryEntriesTableUpdateCompanionBuilder,
    (
      WatchHistoryEntry,
      BaseReferences<_$FluxDatabase, $WatchHistoryEntriesTable,
          WatchHistoryEntry>
    ),
    WatchHistoryEntry,
    PrefetchHooks Function()> {
  $$WatchHistoryEntriesTableTableManager(
      _$FluxDatabase db, $WatchHistoryEntriesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$WatchHistoryEntriesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$WatchHistoryEntriesTableOrderingComposer(
                  $db: db, $table: table),
          createComputedFieldComposer: () =>
              $$WatchHistoryEntriesTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> mediaItemId = const Value.absent(),
            Value<int> positionMs = const Value.absent(),
            Value<int> durationMs = const Value.absent(),
            Value<bool> watched = const Value.absent(),
            Value<DateTime> lastWatchedAt = const Value.absent(),
          }) =>
              WatchHistoryEntriesCompanion(
            id: id,
            mediaItemId: mediaItemId,
            positionMs: positionMs,
            durationMs: durationMs,
            watched: watched,
            lastWatchedAt: lastWatchedAt,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int mediaItemId,
            Value<int> positionMs = const Value.absent(),
            Value<int> durationMs = const Value.absent(),
            Value<bool> watched = const Value.absent(),
            Value<DateTime> lastWatchedAt = const Value.absent(),
          }) =>
              WatchHistoryEntriesCompanion.insert(
            id: id,
            mediaItemId: mediaItemId,
            positionMs: positionMs,
            durationMs: durationMs,
            watched: watched,
            lastWatchedAt: lastWatchedAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$WatchHistoryEntriesTableProcessedTableManager = ProcessedTableManager<
    _$FluxDatabase,
    $WatchHistoryEntriesTable,
    WatchHistoryEntry,
    $$WatchHistoryEntriesTableFilterComposer,
    $$WatchHistoryEntriesTableOrderingComposer,
    $$WatchHistoryEntriesTableAnnotationComposer,
    $$WatchHistoryEntriesTableCreateCompanionBuilder,
    $$WatchHistoryEntriesTableUpdateCompanionBuilder,
    (
      WatchHistoryEntry,
      BaseReferences<_$FluxDatabase, $WatchHistoryEntriesTable,
          WatchHistoryEntry>
    ),
    WatchHistoryEntry,
    PrefetchHooks Function()>;
typedef $$AppPreferencesTableCreateCompanionBuilder = AppPreferencesCompanion
    Function({
  required String key,
  required String value,
  Value<int> rowid,
});
typedef $$AppPreferencesTableUpdateCompanionBuilder = AppPreferencesCompanion
    Function({
  Value<String> key,
  Value<String> value,
  Value<int> rowid,
});

class $$AppPreferencesTableFilterComposer
    extends Composer<_$FluxDatabase, $AppPreferencesTable> {
  $$AppPreferencesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get key => $composableBuilder(
      column: $table.key, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get value => $composableBuilder(
      column: $table.value, builder: (column) => ColumnFilters(column));
}

class $$AppPreferencesTableOrderingComposer
    extends Composer<_$FluxDatabase, $AppPreferencesTable> {
  $$AppPreferencesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get key => $composableBuilder(
      column: $table.key, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get value => $composableBuilder(
      column: $table.value, builder: (column) => ColumnOrderings(column));
}

class $$AppPreferencesTableAnnotationComposer
    extends Composer<_$FluxDatabase, $AppPreferencesTable> {
  $$AppPreferencesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get key =>
      $composableBuilder(column: $table.key, builder: (column) => column);

  GeneratedColumn<String> get value =>
      $composableBuilder(column: $table.value, builder: (column) => column);
}

class $$AppPreferencesTableTableManager extends RootTableManager<
    _$FluxDatabase,
    $AppPreferencesTable,
    AppPreference,
    $$AppPreferencesTableFilterComposer,
    $$AppPreferencesTableOrderingComposer,
    $$AppPreferencesTableAnnotationComposer,
    $$AppPreferencesTableCreateCompanionBuilder,
    $$AppPreferencesTableUpdateCompanionBuilder,
    (
      AppPreference,
      BaseReferences<_$FluxDatabase, $AppPreferencesTable, AppPreference>
    ),
    AppPreference,
    PrefetchHooks Function()> {
  $$AppPreferencesTableTableManager(
      _$FluxDatabase db, $AppPreferencesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AppPreferencesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AppPreferencesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AppPreferencesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> key = const Value.absent(),
            Value<String> value = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              AppPreferencesCompanion(
            key: key,
            value: value,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String key,
            required String value,
            Value<int> rowid = const Value.absent(),
          }) =>
              AppPreferencesCompanion.insert(
            key: key,
            value: value,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$AppPreferencesTableProcessedTableManager = ProcessedTableManager<
    _$FluxDatabase,
    $AppPreferencesTable,
    AppPreference,
    $$AppPreferencesTableFilterComposer,
    $$AppPreferencesTableOrderingComposer,
    $$AppPreferencesTableAnnotationComposer,
    $$AppPreferencesTableCreateCompanionBuilder,
    $$AppPreferencesTableUpdateCompanionBuilder,
    (
      AppPreference,
      BaseReferences<_$FluxDatabase, $AppPreferencesTable, AppPreference>
    ),
    AppPreference,
    PrefetchHooks Function()>;
typedef $$SubtitleSearchCacheTableCreateCompanionBuilder
    = SubtitleSearchCacheCompanion Function({
  Value<int> id,
  required int tmdbId,
  required String language,
  required String payload,
  Value<DateTime> fetchedAt,
});
typedef $$SubtitleSearchCacheTableUpdateCompanionBuilder
    = SubtitleSearchCacheCompanion Function({
  Value<int> id,
  Value<int> tmdbId,
  Value<String> language,
  Value<String> payload,
  Value<DateTime> fetchedAt,
});

class $$SubtitleSearchCacheTableFilterComposer
    extends Composer<_$FluxDatabase, $SubtitleSearchCacheTable> {
  $$SubtitleSearchCacheTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get tmdbId => $composableBuilder(
      column: $table.tmdbId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get language => $composableBuilder(
      column: $table.language, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get payload => $composableBuilder(
      column: $table.payload, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get fetchedAt => $composableBuilder(
      column: $table.fetchedAt, builder: (column) => ColumnFilters(column));
}

class $$SubtitleSearchCacheTableOrderingComposer
    extends Composer<_$FluxDatabase, $SubtitleSearchCacheTable> {
  $$SubtitleSearchCacheTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get tmdbId => $composableBuilder(
      column: $table.tmdbId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get language => $composableBuilder(
      column: $table.language, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get payload => $composableBuilder(
      column: $table.payload, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get fetchedAt => $composableBuilder(
      column: $table.fetchedAt, builder: (column) => ColumnOrderings(column));
}

class $$SubtitleSearchCacheTableAnnotationComposer
    extends Composer<_$FluxDatabase, $SubtitleSearchCacheTable> {
  $$SubtitleSearchCacheTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get tmdbId =>
      $composableBuilder(column: $table.tmdbId, builder: (column) => column);

  GeneratedColumn<String> get language =>
      $composableBuilder(column: $table.language, builder: (column) => column);

  GeneratedColumn<String> get payload =>
      $composableBuilder(column: $table.payload, builder: (column) => column);

  GeneratedColumn<DateTime> get fetchedAt =>
      $composableBuilder(column: $table.fetchedAt, builder: (column) => column);
}

class $$SubtitleSearchCacheTableTableManager extends RootTableManager<
    _$FluxDatabase,
    $SubtitleSearchCacheTable,
    SubtitleSearchCacheData,
    $$SubtitleSearchCacheTableFilterComposer,
    $$SubtitleSearchCacheTableOrderingComposer,
    $$SubtitleSearchCacheTableAnnotationComposer,
    $$SubtitleSearchCacheTableCreateCompanionBuilder,
    $$SubtitleSearchCacheTableUpdateCompanionBuilder,
    (
      SubtitleSearchCacheData,
      BaseReferences<_$FluxDatabase, $SubtitleSearchCacheTable,
          SubtitleSearchCacheData>
    ),
    SubtitleSearchCacheData,
    PrefetchHooks Function()> {
  $$SubtitleSearchCacheTableTableManager(
      _$FluxDatabase db, $SubtitleSearchCacheTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SubtitleSearchCacheTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SubtitleSearchCacheTableOrderingComposer(
                  $db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SubtitleSearchCacheTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> tmdbId = const Value.absent(),
            Value<String> language = const Value.absent(),
            Value<String> payload = const Value.absent(),
            Value<DateTime> fetchedAt = const Value.absent(),
          }) =>
              SubtitleSearchCacheCompanion(
            id: id,
            tmdbId: tmdbId,
            language: language,
            payload: payload,
            fetchedAt: fetchedAt,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int tmdbId,
            required String language,
            required String payload,
            Value<DateTime> fetchedAt = const Value.absent(),
          }) =>
              SubtitleSearchCacheCompanion.insert(
            id: id,
            tmdbId: tmdbId,
            language: language,
            payload: payload,
            fetchedAt: fetchedAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$SubtitleSearchCacheTableProcessedTableManager = ProcessedTableManager<
    _$FluxDatabase,
    $SubtitleSearchCacheTable,
    SubtitleSearchCacheData,
    $$SubtitleSearchCacheTableFilterComposer,
    $$SubtitleSearchCacheTableOrderingComposer,
    $$SubtitleSearchCacheTableAnnotationComposer,
    $$SubtitleSearchCacheTableCreateCompanionBuilder,
    $$SubtitleSearchCacheTableUpdateCompanionBuilder,
    (
      SubtitleSearchCacheData,
      BaseReferences<_$FluxDatabase, $SubtitleSearchCacheTable,
          SubtitleSearchCacheData>
    ),
    SubtitleSearchCacheData,
    PrefetchHooks Function()>;

class $FluxDatabaseManager {
  final _$FluxDatabase _db;
  $FluxDatabaseManager(this._db);
  $$LibraryFoldersTableTableManager get libraryFolders =>
      $$LibraryFoldersTableTableManager(_db, _db.libraryFolders);
  $$MediaItemsTableTableManager get mediaItems =>
      $$MediaItemsTableTableManager(_db, _db.mediaItems);
  $$WatchHistoryEntriesTableTableManager get watchHistoryEntries =>
      $$WatchHistoryEntriesTableTableManager(_db, _db.watchHistoryEntries);
  $$AppPreferencesTableTableManager get appPreferences =>
      $$AppPreferencesTableTableManager(_db, _db.appPreferences);
  $$SubtitleSearchCacheTableTableManager get subtitleSearchCache =>
      $$SubtitleSearchCacheTableTableManager(_db, _db.subtitleSearchCache);
}
