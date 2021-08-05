class Album {
  final String imageName;
  final String imageIconUrl;
  final String title;
  final String description;
  final int year;

  Album(
      {this.title = "",
      this.description = "",
      this.imageIconUrl = "",
      this.imageName = "",
      this.year = 2021});
}
