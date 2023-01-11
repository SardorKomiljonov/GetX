class AlbumModel {
  final String title, body;
  final int id, userId;

  AlbumModel({
    required this.title,
    required this.id,
    required this.userId,
    required this.body,
  });

  factory AlbumModel.fromJson(Map<String, dynamic> json) {
    return AlbumModel(
      title: json['title'],
      userId: json['userId'],
      body: json['body'],
      id: json['id'],
    );
  }
}
