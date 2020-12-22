import 'package:match/match.dart';

MatchCase<String> startsWith(String pattern) => (text) => text.startsWith(pattern);
