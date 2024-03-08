class SourceModel {
  final String id;
  final String name;

  SourceModel({
    required this.id,
    required this.name,
  });

  factory SourceModel.fromJson(Map<String, dynamic> Json) => SourceModel(
        id: Json["id"],
        name: Json["name"],
      );
}
