# efik_localization

This package provides localization support for Efik locale.

## Getting Started

### Depend on it

Add this to your package's pubspec.yaml file:

```
dependencies:
  efik_localization: <latest version>

```
### Install it

You can install packages from the command line:

with Flutter:

```
$ flutter pub get
```

### Import it

```
import 'package:efik_localization/efik_localization.dart';
```

### Use it

```
MaterialApp(
      localizationsDelegates: [
        ...
        EfMaterialLocalizations.delegate,
        EfCupertinoLocalizations.delegate,
        EfWidgetLocalizations.delegate
      ],
      supportedLocales: [
        const Locale('ef', ''),
      ],
      locale: Locale('ef'),
    );
```

if you use EasyLocalizations
```
    EasyLocalization(
      supportedLocales: const [
        Locale('en'),
        Locale('ef')
      ],
      path: 'assets/translations',
      fallbackLocale: const Locale('en'),
      startLocale: const Locale('ef'),
      child: const MyApp(),
    ),
```