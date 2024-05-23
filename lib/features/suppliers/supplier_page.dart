import 'package:chms/core/models/suppli.dart';
import 'package:chms/features/suppliers/providers/suppliers_provider.dart';
import 'package:chms/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SupplierPage extends HookConsumerWidget {
  const SupplierPage({super.key, required this.id});

  final String id;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useTabController(initialLength: 2);
    final supplier = ref
        .watch(suppliersProvider)
        .asData
        ?.value
        .where((e) => e.id == id)
        .firstOrNull;

    if (supplier == null) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(supplier.name),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit_outlined),
            onPressed: () {
              context.push('/write-supplier', extra: supplier);
            },
          ),
          IconButton(
            icon: const Icon(Icons.delete_outline_rounded),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  supplier.contactInformation,
                  style: context.style.bodyLarge,
                ),
                const SizedBox(height: 8),
                Text(supplier.address),
                const SizedBox(height: 8),
                GestureDetector(
                  onTap: () {
                    // context.launch('mailto:${supplier.email}');
                  },
                  child: Row(
                    children: [
                      Text(supplier.email),
                      const Icon(
                        Icons.keyboard_arrow_right_rounded,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                GestureDetector(
                  onTap: () {
                    // context.launch('tel:${supplier.phone}');
                  },
                  child: Row(
                    children: [
                      Text(supplier.phone),
                      const Icon(
                        Icons.keyboard_arrow_right_rounded,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          TabBar(
            controller: controller,
            tabs: [
              Tab(
                text: 'Products',
              ),
              Tab(
                text: 'Transactions',
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: controller,
              children: [
                ListView(
                  children: [
                    ListTile(
                      title: Text('Product 1'),
                    ),
                    ListTile(
                      title: Text('Product 2'),
                    ),
                  ],
                ),
                ListView(
                  children: [
                    ListTile(
                      title: Text('Transaction 1'),
                    ),
                    ListTile(
                      title: Text('Transaction 2'),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
