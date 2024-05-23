import 'package:chms/core/models/suppli.dart';
import 'package:chms/features/suppliers/providers/write_supplier_provider.dart';
import 'package:chms/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class WriteSupplierPage extends HookConsumerWidget {
  const WriteSupplierPage({super.key, this.initial});

  final Supplier? initial;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = writeSupplierProvider(initial);
    final state = ref.watch(provider);
    final notifier = ref.read(provider.notifier);

    final formKey = useRef(GlobalKey<FormState>());

    return Scaffold(
      appBar: AppBar(
        title: Text(initial == null ? 'Add Supplier' : 'Edit Supplier'),
      ),
      floatingActionButton: state.loading
          ? null
          : FloatingActionButton.extended(
              onPressed: () async {
                if (formKey.value.currentState!.validate()) {
                  try {
                    await notifier.write();
                    context.pop();
                  } catch (e) {
                    context.error(e);
                  }
                }
              },
              label: const Text('Save'),
            ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: formKey.value,
          child: Column(
            children: [
              TextFormField(
                enabled: !state.loading,
                textCapitalization: TextCapitalization.words,
                decoration: const InputDecoration(labelText: 'Name'),
                initialValue: state.supplier.name,
                onChanged: notifier.nameChanged,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Name is required';
                  }
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                enabled: !state.loading,
                textCapitalization: TextCapitalization.words,
                decoration:
                    const InputDecoration(labelText: 'Contact Information'),
                initialValue: state.supplier.contactInformation,
                onChanged: notifier.contactInformationChanged,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Contact Information is required';
                  }
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                enabled: !state.loading,
                textCapitalization: TextCapitalization.words,
                decoration: const InputDecoration(labelText: 'Address'),
                initialValue: state.supplier.address,
                onChanged: notifier.addressChanged,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Address is required';
                  }
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                enabled: !state.loading,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(labelText: 'Email'),
                initialValue: state.supplier.email,
                onChanged: notifier.emailChanged,
                validator: (value) =>
                    value!.isNotEmpty ? null : 'Email is required',
              ),
              const SizedBox(height: 16),
              TextFormField(
                enabled: !state.loading,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(labelText: 'Phone'),
                initialValue: state.supplier.phone,
                onChanged: notifier.phoneChanged,
                validator: (value) =>
                    value!.isNotEmpty ? null : 'Phone is required',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
