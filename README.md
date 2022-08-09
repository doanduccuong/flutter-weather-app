
## Intro
This repo base on management package is [flutter_bloc](https://pub.dev/packages/flutter_bloc).
The app has been setup to work with [retrofit](https://pub.dev/packages/retrofit), [dio](https://pub.dev/packages/dio), [json_annotation](https://pub.dev/packages/json_annotation), [intl_utils](https://pub.dev/packages/intl_utils) and [shimmer](https://pub.dev/packages/shimmer)

## Getting Started

1. Install [Flutter SDK](https://flutter.dev/docs/get-started/install). Require Flutter 3.0.5
2. Install plugins in Android Studio (optional)
   * [Dart Data Class](https://plugins.jetbrains.com/plugin/12429-dart-data-class)
   * [Flutter Intl](https://plugins.jetbrains.com/plugin/13666-flutter-intl)
   * [Bloc](https://plugins.jetbrains.com/plugin/12129-bloc)
4. Clone the repo.
5. Run `flutter pub get`
6. Run `flutter pub run intl_utils:generate`
7. Run `flutter pub run build_runner build --delete-conflicting-outputs`
8. Run app.

## File structure

```
assets
└───font
└───image
    └───2.0x
    └───3.0x

libs
└───common
│   └───app_colors.dart
│   └───app_dimens.dart
│   └───app_images.dart
│   └───app_shadows.dart
│   └───app_text_styles.dart
│   └───app_themes.dart
└───configs
│   └───app_configs.dart
└───database
│   └───secure_storage_helper.dart
│   └───shared_preferences_helper.dart
│   └─── ...
└───l10n
└───models
│   └───entities
│   │   └───user_entity.dart
│   │   └─── ...
│   └───enums
│   │   └───load_status.dart
│   │   └─── ...
│   └───params
│   │   └───sign_up_param.dart
│   │   └─── ...
│   └───response
│       └───array_response.dart
│       └───object_response.dart
└───networks
│   └───api_client.dart
│   └───api_interceptors.dart
│   └───api_util.dart
└───router
│   └───route_config.dart
└───services
│   └───api
│   └───store
│   └───auth_service.dart
│   └───cache_service.dart
│   └───setting_service.dart
└───ui
│   └───view
│   │   └───custom_view.dart
│   └───pages
│   │   └───splash
│   │   │   └───splash_logic.dart
│   │   │   └───splash_state.dart
│   │   │   └───splash_view.dart
│   │   └───other_page...
│   └───widget
│       └───appbar
│       └───buttons
│       │   └───app_button.dart
│       │   └───app_icon_button.dart
│       │   └───...
│       └───images
│       │   └───app_cache_image.dart
│       │   └───app_circle_avatar.dart
│       └───textfields
│       └───shimmer
│       └───app_bottom_sheet.dart
│       └───app_dialog.dart
│       └───app_snackbar.dart
│       └───...
└───utils
│   └───date_utils.dart
│   └───file_utils.dart
│   └───logger.dart
│   └───utils.dart
└───main.dart
```
| Item           | Explaint |
| -------------- | -------- |
| **main.dart**: | the "entry point" of program. |
| **assets**:    | store static assests like fonts and images. |
| **common**:    | contain colors, textStyle, theme, ... |
| **configs**:   | hold the configs of your application. |
| **database**:  | container database helper class |
| **l10n**:      | contain all localized string. [See more](https://flutter.dev/docs/development/accessibility-and-localization/internationalization) |
| **models**:    | contain entity, enum, .. |
| **networks**:  |
| **router**:    | contain the route navigation |
| **ui**         |  |
| **utils**      |  |

## How to use
### Creating a screen.
All screen should be created in the `ui/pages` folder
Each screen have 3 file:
**Logic:** `movies_cubit.dart`
```java=
class MoviesCubit extends Cubit<MoviesState> {
  MovieRepository movieRepo;

  MoviesCubit({
    required this.movieRepo,
  }) : super(const MoviesState());

  void fetchMovies() async {
    emit(state.copyWith(loadMovieStatus: LoadStatus.loading));
    try {
      final result = await movieRepo.getMovies();
      emit(state.copyWith(
        loadMovieStatus: LoadStatus.success,
        movies: result.results,
      ));
    } catch (e) {
      emit(state.copyWith(loadMovieStatus: LoadStatus.failure));
    }
  }
}

```
**State:** `movies_state.dart`
```java=
class MoviesState extends Equatable {
  final LoadStatus loadMovieStatus;
  final List<MovieEntity> movies;
    
  const MoviesState({
    this.loadMovieStatus = LoadStatus.initial,
    this.movies = const [],
  });

  @override
  List<Object?> get props => [
        loadMovieStatus,
        movies,
      ];

  MoviesState copyWith({
    LoadStatus? loadMovieStatus,
    List<MovieEntity>? movies,
  }) {
    return MoviesState(
      loadMovieStatus: loadMovieStatus ?? this.loadMovieStatus,
      movies: movies ?? this.movies,
    );
  }
}
```
**View:** `movies_view.dart`
```java=
class MoviesPage extends StatelessWidget {
  ...
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return MoviesCubit(
          movieRepo: context.read<MovieRepository>(),
        );
      },
      child: MoviesChildPage(),
    );
  }
}

class MoviesChildPage extends StatefulWidget {
  ...
  @override
  State<MoviesChildPage> createState() => _MoviesChildPageState();
}

class _MoviesChildPageState extends State<MoviesChildPage> {
  late MoviesCubit _cubit;

  @override
  void initState() {
    _cubit = BlocProvider.of<MoviesCubit>(context);
    super.initState();
    _cubit.fetchInitialMovies();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ...;
  }
  ...
}
```

### Creating API.
1. Create entity object in folder `lib/models/entities`
   Ex: `movie_entity.dart`
```java=
import 'package:json_annotation/json_annotation.dart';

part 'movie_entity.g.dart';

@JsonSerializable()
class MovieEntity {
  @JsonKey()
  String? title;
  ...
    
  factory MovieEntity.fromJson(Map<String, dynamic> json) => _$MovieEntityFromJson(json);
  Map<String, dynamic> toJson() => _$MovieEntityToJson(this);
}
```
Class must have `@JsonSerializable()` for generator. Read [json_serializable](https://pub.dev/packages/json_serializable)

2. Define and Generate your API in file `lib/networks/api_client.dart`
   Ex: GET movies
```java=
  /// Movie
  @GET("/3/discover/movie")
  Future<ArrayResponse<MovieEntity>> getMovies(@Query('api_key') String apiKey, @Query('page') int page);
```
Note: Using **ArrayResponse** and **ObjectResponse** for generic response

3. Require run command line:
```
flutter pub run build_runner build --delete-conflicting-outputs
```

4. Create repository file for your feature in folder `lib/repositories`
   Ex: `movie_repository.dart`
```java=
abstract class MovieRepository {
  Future<ArrayResponse<MovieEntity>> getMovies();
}

class MovieRepositoryImpl extends MovieRepository {
  ApiClient apiClient;

  MovieRepositoryImpl({required this.apiClient});

  @override
  Future<ArrayResponse<MovieEntity>> getMovies() async {
    return apiClient.getMovies(...);
  }
}
```
After, add `part 'auth_api.dart';` to `services/api/api_service`

5. You can call API in the logic of screen.
   Ex:
```java=
final result = await movieRepo.getMovies();
```

### Other
#### Logger
```java=
logger.d("message"); //"💙 DEBUG: message"
logger.i("message"); //"💚 INFO: message"
logger.e("message"); //"❤️ ERROR: message"
logger.log("very very very long message");
```
#### Snackbar
```java=
AppSnackbar.showInfo(message: 'Info');
AppSnackbar.showWarning(message: 'Warning');
AppSnackbar.showError(message: 'Error');
```
#### Dialog
```java=
AppDialog.defaultDialog(
          message: "An error happened. Please check your connection!",
          textConfirm: "Retry",
          onConfirm: () {
            //Do something
          },
);
```
#### Button UI when call API
```java=
return Obx(() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: AppTintButton(
          title: 'Sign In',
          onPressed: _signIn,
          isLoading: state.signInStatus.value == LoadStatus.loading,
        ),
    );
});
```
