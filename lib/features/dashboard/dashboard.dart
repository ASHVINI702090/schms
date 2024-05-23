import 'package:chms/features/home/home_page.dart';
import 'package:chms/features/suppliers/suppliers_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class Dashboard extends HookWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final index = useState(0);
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        selectedIndex: index.value,
        onDestinationSelected: (int i) => index.value = i,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.supervised_user_circle_outlined),
            label: 'Suppliers',
          ),
          NavigationDestination(
            icon: Icon(Icons.list),
            label: 'Orders',
          ),
          NavigationDestination(
            icon: Icon(Icons.inventory_outlined),
            label: 'Inventory',
          ),
        ],
      ),
      body: [
        HomePage(),
        SupplersPage(),
        Scaffold(),
        Scaffold(),
      ][index.value],
    );
  }
}
