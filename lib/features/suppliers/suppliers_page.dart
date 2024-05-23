import 'package:chms/features/components/async_widget.dart';
import 'package:chms/features/suppliers/providers/suppliers_provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SupplersPage extends ConsumerWidget {
  const SupplersPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Suppliers'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.push('/write-supplier');
        },
        child: const Icon(Icons.add),
      ),
      body: AsyncWidget(
        value: ref.watch(suppliersProvider),
        data: (data) => ListView(
            children: data
                .map(
                  (e) => ListTile(
                    onTap: () {
                      context.push('/supplier', extra: e.id);
                    },
                    title: Text(e.name),
                    subtitle: Text(e.contactInformation),
                  ),
                )
                .toList()),
      ),
    );
  }
}
