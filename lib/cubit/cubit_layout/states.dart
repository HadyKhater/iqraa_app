abstract class LayOutStates{}

class LayOutInitialStates extends LayOutStates{}

class LayOutLoadingStates extends LayOutStates{}

class LayOutSuccessStates extends LayOutStates{}

class LayOutErrorStates extends LayOutStates{
  final String error;

  LayOutErrorStates({required this.error});
}

class LayOutChangeBottomNavStates extends LayOutStates{}