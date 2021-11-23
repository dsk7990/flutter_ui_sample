class ChuckCategories {
  final List<String>? categories;

  ChuckCategories({this.categories});

  factory ChuckCategories.fromJson(List<dynamic> json) {
    return ChuckCategories(
      // ignore: unnecessary_null_comparison
      categories: json != null ? List<String>.from(json) : null,
    );
  }

  List<String> toJson() {
    List<String> data = <String>[];
    if (categories != null) {
      data = categories!;
    }
    return data;
  }
}
