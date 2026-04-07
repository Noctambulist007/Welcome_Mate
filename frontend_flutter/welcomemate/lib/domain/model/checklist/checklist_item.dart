class ChecklistItem {
  final String id;
  final String title;
  final String? description;
  final List<String>? requiredDocs;
  final int order;
  final bool isCompleted;

  ChecklistItem({
    required this.id,
    required this.title,
    this.description,
     this.requiredDocs,
    required this.order,
    required this.isCompleted,
  });
}
