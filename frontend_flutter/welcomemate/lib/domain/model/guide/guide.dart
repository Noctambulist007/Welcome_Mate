class Guide {
  final String id;
  final String title;
  final String bodyMarkdown;
  final String countryCode;
  final List<String>? tags;
  final String? verifiedAt;
  final String? updatedAt;

  Guide({
    required this.id,
    required this.title,
    required this.bodyMarkdown,
    required this.countryCode,
    required this.tags,
    this.verifiedAt,
    this.updatedAt,
  });
}
