import 'package:welcomemate/domain/model/checklist/checklist_item.dart';

class Checklist {
  final String id;
  final String slug;
  final String title;
  final String countryCode;
  final String stage;
  final int order;
  final List<ChecklistItem>? items;

  Checklist({
    required this.id,
    required this.slug,
    required this.title,
    required this.countryCode,
    required this.stage,
    required this.order,
    this.items,
  });
}
