import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// FirebaseAnalytics analytics = FirebaseAnalytics.instance;
// FirebaseAnalyticsObserver observer =
//     FirebaseAnalyticsObserver(analytics: analytics);

final provedorfirebseAnalytics =
    Provider<FirebaseAnalytics>((ref) => FirebaseAnalytics.instance);
final navigatonObserver = Provider<FirebaseAnalyticsObserver>((ref) {
  final data = ref.watch(provedorfirebseAnalytics);

  return FirebaseAnalyticsObserver(analytics: data);
});
