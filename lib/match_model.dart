// lib/match_model.dart
class Match {
  final String event;
  final String date;
  final String time;
  final String league;
  final String season;
  final String country;
  final String round;
  final String venue;
  final String poster;

  Match({
    required this.event,
    required this.date,
    required this.time,
    required this.league,
    required this.season,
    required this.country,
    required this.round,
    required this.venue,
    required this.poster,
  });

  factory Match.fromJson(Map<String, dynamic> json) {
    return Match(
      event: json['strEvent'],
      date: json['dateEvent'],
      time: json['strTime'],
      league: json['strLeague'],
      season: json['strSeason'],
      country: json['strCountry'] ?? '',
      round: json['intRound'].toString(),
      venue: json['strVenue'] ?? '',
      poster: json['strPoster'] ?? '',
    );
  }
}
