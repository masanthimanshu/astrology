import 'package:flutter/material.dart';

import '/features/navigation/navigation.dart';

final Map<String, WidgetBuilder> appRoutes = {
  "/": (e) => const Navigation(),
};
