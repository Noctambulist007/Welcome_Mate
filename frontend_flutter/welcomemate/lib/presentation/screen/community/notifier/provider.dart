import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:welcomemate/presentation/screen/community/notifier/community_notifier.dart';
import 'package:welcomemate/presentation/screen/community/state/community_ui_state.dart';

typedef CommunityNotifierProvider =
    StateNotifierProvider<CommunityNotifier, CommunityUiState>;

final CommunityNotifierProvider communityNotifierProvider = StateNotifierProvider(
  (ref) => CommunityNotifier(),
);
