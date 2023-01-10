class AlbumModel {
  final String title, url, thumbnailUlr;
  final int id, albumId;

  AlbumModel(
      {required this.title,
      required this.url,
      required this.thumbnailUlr,
      required this.id,
      required this.albumId});

  factory AlbumModel.fromJson(Map<String, dynamic> json) {
    return AlbumModel(
      title: json['title'],
      url: json['url'],
      thumbnailUlr: json['thumbnailUrl'],
      id: json['id'],
      albumId: json['albumId'],
    );
  }
}
