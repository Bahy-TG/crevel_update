class BannerModel {
  final String title;
  final String subtitle;
  final String primaryText;
  final Function onPrimary;
  final String secondaryText;
  final Function onSecondary;
  String? backgroundImage;
  String? sideImage;

  BannerModel({
    required this.title,
    required this.subtitle,
    required this.primaryText,
    required this.onPrimary,
    required this.secondaryText,
    required this.onSecondary,
    this.backgroundImage,
    this.sideImage,
  });
}
