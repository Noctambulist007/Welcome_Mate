import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:welcomemate/presentation/screen/main/notifier/tab_index_notifier.dart';

final tabIndexProvider = StateNotifierProvider<TabIndexNotifier, int>(
  (ref) => TabIndexNotifier(),
);
