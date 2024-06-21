class Anime {
  final String title;
  final String imageUrl;

  Anime({required this.title, required this.imageUrl});

  factory Anime.fromJson(Map<String, dynamic> json) {
    return Anime(
      title: json['title']['romaji'],
      imageUrl: json['coverImage']['large'],
    );
  }
}
