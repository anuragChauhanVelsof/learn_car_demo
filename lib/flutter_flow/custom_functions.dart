import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

int? getCurrentIndex(int? index) {
  return index! + 1;
}

double? getQuestionsCompletedPercetange(
  int? index,
  int? size,
) {
  return (index! + 1) / size!;
}

String? getScoresString(
  List<QuestionsRow> answers,
  List<String> selectedAnswers,
) {
  int score = 0;
  for (int i = 0; i < answers.length; i++) {
    if (selectedAnswers[i] == answers[i].correctOption) {
      score++;
    }
  }
  return "${score}/${answers.length} ";
}

bool getTestResult(
  List<QuestionsRow> questions,
  List<String> answers,
) {
  int score = 0;
  for (int i = 0; i < questions.length; i++) {
    if (answers[i] == questions[i].correctOption) {
      score++;
    }
  }
  return score >= questions.length / 2;
}

String getTestResultPercentage(
  List<QuestionsRow> questions,
  List<String> answers,
) {
  int score = 0;
  for (int i = 0; i < questions.length; i++) {
    if (answers[i] == questions[i].correctOption) {
      score++;
    }
  }

  final percentage = score / questions.length * 100;

  return "${percentage}%";
}

double getTestResultProgressValue(
  List<QuestionsRow> questions,
  List<String> answers,
) {
  int score = 0;
  for (int i = 0; i < questions.length; i++) {
    if (answers[i] == questions[i].correctOption) {
      score++;
    }
  }

  final percentage = score / questions.length;

  return percentage;
}

String getTimeUsed(int time) {
  int leftTime = 600000 - time;
  int minutes = leftTime ~/ 60000;
  int seconds = (leftTime % 60000) ~/ 1000;

  /// If you need to return both minutes and seconds in a custom format, you might consider returning a string or a map.
  /// For now, we'll just return the minutes part as specified.

  return "${minutes}:${seconds}";
}
