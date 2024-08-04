import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:plants_manager/presentation/profile.dart';
import 'package:plants_manager/presentation/shop.dart';
import 'package:plants_manager/presentation/water_schedule.dart';



import 'create_offert.dart';
import 'favourite.dart';

final bottomNavBarIndexProvider = AutoDisposeStateProvider<int>((ref) => 0);

class MainScreen extends ConsumerWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bottomNavBarIndex = ref.watch(bottomNavBarIndexProvider);

    final List<Widget> screens = [
      WaterSchedule(),
      ShopScreen(),
      CreateOffer(),
      Favourite(),
      Profile(),
    ];

    return Scaffold(
      body: screens[bottomNavBarIndex],
      bottomNavigationBar: _buildBottomNavigationBar(ref),
    );
  }

  BottomNavigationBar _buildBottomNavigationBar(WidgetRef ref) {
    return BottomNavigationBar(
      backgroundColor: Colors.green,
      selectedItemColor: Colors.green,
      unselectedItemColor: Colors.black26,
      currentIndex: ref.watch(bottomNavBarIndexProvider),
      onTap: (index) {
        ref.read(bottomNavBarIndexProvider.notifier).state = index;
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.water_drop_rounded),
          label: 'Schedule',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_bag_rounded),
          label: 'Shop',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_circle_outlined),
          label: 'Add',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Favourite',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),

      ],
    );
  }}