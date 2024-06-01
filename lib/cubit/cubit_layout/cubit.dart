import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iqraa_app/cubit/cubit_layout/states.dart';
import 'package:iqraa_app/views/home/home_view.dart';
import 'package:iqraa_app/views/my_library/my_library_view.dart';
import 'package:iqraa_app/views/profile/profile.dart';
import 'package:iqraa_app/views/sections/section_view.dart';

class LayOutCubit extends Cubit<LayOutStates> {
  LayOutCubit() : super(LayOutInitialStates());

  static LayOutCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;
  List<Widget> bottomScreen = [
    const HomeView(),
    const SectionView(),
    const MyLibraryView(),
    const ProfileView(),
  ];
  void changeBottom(index) {
    currentIndex = index;
    emit(LayOutChangeBottomNavStates());
  }
}
