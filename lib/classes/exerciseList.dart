import 'package:fitness_screen/classes/exercise.dart';

class WorkoutExercise extends Exercise {
  String gifUrl;
  String workoutName;
  String nextWorkoutGifUrl;
  String prevWorkoutGifUrl;
  int minutes;
  int seconds;
  int reps;

  WorkoutExercise(String gifUrl, String workoutName, String nextWorkoutGifUrl,
      [String prevWorkoutGifUrl = '',
      int minutes = 0,
      int seconds = 0,
      int reps = 0])
      : super(gifUrl, workoutName);
}
