import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:animesetlist/models/anime_model.dart';

class AniListService {
  Future<List<Anime>> fetchAnimes() async {
    final response = await http.post(
      Uri.parse('https://graphql.anilist.co'),
      headers: {"Content-Type": "application/json"},
      body: json.encode({
        "query": """
          query {
            Page(page: 1, perPage: 10) {
              media(type: ANIME, sort: TRENDING_DESC) {
                title {
                  romaji
                }
                coverImage {
                  large
                }
              }
            }
          }
        """
      }),
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body)['data']['Page']['media'] as List;
      return data.map((json) => Anime.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load animes');
    }
  }
}
