import 'dart:convert';

class Film {
  String filmId;
  Film({required this.filmId});
  factory Film.fromJson(Map<String, dynamic> parsedJson) {
    return Film(filmId: parsedJson['id']);
  }
}

Future<String> _loadAStudentAsset() async {
  //return await rootBundle.loadString('assets/student.json');
  return '{id: "test"}';
}

Future loadFilms() async {
  String jsonString = await _loadAStudentAsset();
  final jsonResponse = json.decode(jsonString);
  Film film = new Film.fromJson(jsonResponse);
  print(film.filmId);
}
