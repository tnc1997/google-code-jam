String findAnySchedule(List<Activity> activities) {
  String y;

  var c = 0;
  var j = 0;

  for (var activity in List<Activity>.from(activities)
    ..sort((a, b) => a.s - b.s)) {
    if (activity.s >= c) {
      c = activity.e;
      activity.parent = 'C';
    } else if (activity.s >= j) {
      j = activity.e;
      activity.parent = 'J';
    } else {
      y = 'IMPOSSIBLE';
      break;
    }
  }

  y ??= activities.map((activity) => activity.parent).join();

  return y;
}

class Activity {
  String parent;

  Activity(this.s, this.e);

  final int s;
  final int e;

  @override
  String toString() => '$s → $e ($parent)';
}
