import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iqraa_app/const/const.dart';
import 'package:iqraa_app/cubit/cubit_layout/cubit.dart';
import 'package:iqraa_app/cubit/cubit_layout/states.dart';

class LayOutView extends StatefulWidget {
  const LayOutView({super.key});

  @override
  State<LayOutView> createState() => _LayOutViewState();
}

class _LayOutViewState extends State<LayOutView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LayOutCubit(),
      child: BlocConsumer<LayOutCubit, LayOutStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = LayOutCubit.get(context);
          return Directionality(
            textDirection: TextDirection.rtl,
            child: Scaffold(
                bottomNavigationBar: BottomNavigationBar(
                  backgroundColor: Colors.white,
                  selectedItemColor: kPrimaryColor,
                  unselectedItemColor: Color(0xff9E9E9E),
                  showSelectedLabels: true,
                  showUnselectedLabels: true,
                  type: BottomNavigationBarType.fixed,
                  onTap: (index) {
                    cubit.changeBottom(index);
                  },
                  currentIndex: cubit.currentIndex,
                  items: <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                        icon: SvgPicture.asset(cubit.currentIndex == 0
                            ? 'asstes/icons/Home.svg'
                            : 'asstes/icons/home_kseco.svg'),
                        label: 'حسابي'),
                    BottomNavigationBarItem(
                        icon: SvgPicture.asset(cubit.currentIndex == 1
                            ? 'asstes/icons/Category_kprim.svg'
                            : 'asstes/icons/Category.svg'),
                        label: 'الاقسام'),
                    BottomNavigationBarItem(
                        icon: SvgPicture.asset(cubit.currentIndex == 2
                            ? 'asstes/icons/book_kprim.svg'
                            : 'asstes/icons/book.svg'),
                        label: 'مكتبتي'),
                    BottomNavigationBarItem(
                        icon: SvgPicture.asset(cubit.currentIndex == 3
                            ? 'asstes/icons/person_kprim.svg'
                            : 'asstes/icons/person.svg'),
                        label: 'شخصي'),
                  ],
                ),
                body: cubit.bottomScreen[cubit.currentIndex]),
          );
        },
      ),
    );
  }
}
