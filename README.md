
# play_kit 

![](https://github.com/playatanu/assets/blob/main/play_kit.png?raw=true)

PLAY_KIT package containing widgets to implement glass morphism in flutter apps. You can controll Glass effect blur radius , height , blur color etc.
This package contains a set of Material Widgets that make it easy to Glass UI design. It's multi-platform, and supports mobile, desktop,
and the browser.

[![pub package](https://github.com/playatanu/assets/raw/main/buymeacoffee.png?raw=true)](https://www.buymeacoffee.com/playatanu)

## Features

- `PlayContainer`  provide a Glass Container 
- `PlayTitle`  provide a Glass Text
- `PlayDivider`  provide a Glass Divider



## Getting started


### 1. Depend on it

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  play_kit: ^0.0.1
```

### 2. Install it

You can install packages from the command line:

with `pub`: 

```
$ pub get play_kit
```

with `Flutter`:

```
$ flutter pub get play_kit
```

### 3. Import it

Now in your `Dart` code, you can use:

```dart
import 'package:play_kit/play_kit.dart';
```


## Using

`PlayContainer` provide a Glass `Container`:

```dart
  PlayContainer(
                height: 200,
                width: 200,
                dark: true,
                  child: PlayTitle(
                    title: 'PLAY_KIT',
                    fontSize: 30,
                    dark: true,
                    fontWeight: FontWeight.w900),
                ),
                       
```
`PlayTitle` provide a Glass `Text`:

```dart
  PlayTitle(title: 'PLAY_KIT', dark: true),
```
`PlayDivider` provide a Glass `Divider`:
```dart
  PlayDivider(height: 20, dark: true),
```


`PlayMaterial` StatelessWidget Glass UI. Include it in your `build` method like:


```dart
class PlayMaterial extends StatelessWidget {
  const PlayMaterial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(children: [
          Image.network(
            'https://flutter.dev/assets/images/homepage/carousel/slide_1-bg.jpg',
            fit: BoxFit.cover,
            height: 800,
          ),
          Image.network(
            'https://flutter.dev/assets/images/homepage/carousel/phone_bezel.png',
            fit: BoxFit.cover,
            height: 700,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              PlayContainer(
                height: 200,
                width: 200,
                dark: true,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: Center(
                  child: PlayTitle(
                    title: 'PLAY_KIT',
                    fontSize: 30,
                    dark: true,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              PlayDivider(
                height: 20,
                dark: true,
              ),
              PlayTitle(
                title: 'PLAY_KIT',
                fontSize: 50,
                dark: true,
                fontWeight: FontWeight.w900,
              ),
            ],
          )
        ]),
      ),
    );
  }
}

```





**Note:** You might come up with an issue that the `play_kit` does not get updated. The solution to this, to open an [issue](https://github.com/playatanu/play_kit/issues/new?template=bug_report.md).


# Bugs or Requests

If you encounter any problems feel free to open an [issue](https://github.com/playatanu/play_kit/issues/new?template=bug_report.md). If you feel the library is missing a feature, please raise a [ticket](https://github.com/playatanu/play_kit/issues/new?template=feature_request.md) on GitHub and I'll look into it. Pull request are also welcome.

This project follows the [all-contributors](https://github.com/all-contributors/all-contributors) specification. Contributions of any kind are welcome!




