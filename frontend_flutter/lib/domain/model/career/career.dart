class Career {
  final String id;
  final String title;
  final String bodyMarkdown;
  final String countryCode;
  final List<String>? tags;
  final String? verifiedAt;
  final String? updatedAt;

  Career({
    required this.id,
    required this.title,
    required this.bodyMarkdown,
    required this.countryCode,
     this.tags,
    this.verifiedAt,
    this.updatedAt,
  });
}
