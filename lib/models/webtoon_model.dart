class WebtoonModel {
  final String id, title, thumb;

  WebtoonModel.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        id = json['id'],
        thumb = json['thumb'];
}
