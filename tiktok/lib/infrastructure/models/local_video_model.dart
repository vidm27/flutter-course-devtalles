class VideoPost {
  final String videoUrl;
  final String name;
  final int likes;
  final int views;

  VideoPost(
      {required this.videoUrl,
      required this.name,
      this.likes = 0,
      this.views = 0});

  factory VideoPost.fromJsonMap(Map<String, dynamic> json) => VideoPost(
      videoUrl: json["videoUrl"],
      name: json["name"] ?? 'No name',
      likes: json['likse'] ?? 0,
      views: json['views'] ?? 0);

  VideoPost toVideoPostEntity() => VideoPost(videoUrl: videoUrl, name: name, likes: likes, views: views);
}
