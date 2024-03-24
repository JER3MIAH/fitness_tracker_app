const String baseSvgPath = 'assets/svgs/';
const String basePngPath = 'assets/pngs/';
const String baseJsonPath = 'assets/json/';
const String baseJpgPath = 'assets/jpgs/';

extension ImageExtension on String {
  // png paths
  String get png => '$basePngPath$this.png';
  // jpg paths
  String get jpg => '$baseJpgPath$this.jpg';
  // svg paths
  String get svg => '$baseSvgPath$this.svg';
  // json paths
  String get json => '$baseJsonPath$this.json';
}

//? JPGS
final String splashImage = 'splash-bg'.jpg;

//? SVGS
final String shoeIcon = 'shoe-icon'.svg;
final String appleIcon = 'apple-icon'.svg;
final String googleIcon = 'google-icon'.svg;
final String facebookIcon = 'facebook-icon'.svg;
final String trophyIcon = 'trophy-icon'.svg;
final String sparkleEffect = 'sparkle-effect'.svg;
final String arrowLeft = 'arrow-left'.svg;
final String arrowRight = 'arrow-right'.svg;
final String arrowDown = 'arrow-down'.svg;

//? PNGS
final String sparkleEffectSmall = 'sparkle-effect-small'.png;
