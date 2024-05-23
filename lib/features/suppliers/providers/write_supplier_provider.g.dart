// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'write_supplier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$writeSupplierHash() => r'29f411aa0c4c3cae03e16fd927ee56b60a40d3c9';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$WriteSupplier
    extends BuildlessAutoDisposeNotifier<WriteSupplierState> {
  late final Supplier? supplier;

  WriteSupplierState build([
    Supplier? supplier,
  ]);
}

/// See also [WriteSupplier].
@ProviderFor(WriteSupplier)
const writeSupplierProvider = WriteSupplierFamily();

/// See also [WriteSupplier].
class WriteSupplierFamily extends Family<WriteSupplierState> {
  /// See also [WriteSupplier].
  const WriteSupplierFamily();

  /// See also [WriteSupplier].
  WriteSupplierProvider call([
    Supplier? supplier,
  ]) {
    return WriteSupplierProvider(
      supplier,
    );
  }

  @override
  WriteSupplierProvider getProviderOverride(
    covariant WriteSupplierProvider provider,
  ) {
    return call(
      provider.supplier,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'writeSupplierProvider';
}

/// See also [WriteSupplier].
class WriteSupplierProvider
    extends AutoDisposeNotifierProviderImpl<WriteSupplier, WriteSupplierState> {
  /// See also [WriteSupplier].
  WriteSupplierProvider([
    Supplier? supplier,
  ]) : this._internal(
          () => WriteSupplier()..supplier = supplier,
          from: writeSupplierProvider,
          name: r'writeSupplierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$writeSupplierHash,
          dependencies: WriteSupplierFamily._dependencies,
          allTransitiveDependencies:
              WriteSupplierFamily._allTransitiveDependencies,
          supplier: supplier,
        );

  WriteSupplierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.supplier,
  }) : super.internal();

  final Supplier? supplier;

  @override
  WriteSupplierState runNotifierBuild(
    covariant WriteSupplier notifier,
  ) {
    return notifier.build(
      supplier,
    );
  }

  @override
  Override overrideWith(WriteSupplier Function() create) {
    return ProviderOverride(
      origin: this,
      override: WriteSupplierProvider._internal(
        () => create()..supplier = supplier,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        supplier: supplier,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<WriteSupplier, WriteSupplierState>
      createElement() {
    return _WriteSupplierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is WriteSupplierProvider && other.supplier == supplier;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, supplier.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin WriteSupplierRef on AutoDisposeNotifierProviderRef<WriteSupplierState> {
  /// The parameter `supplier` of this provider.
  Supplier? get supplier;
}

class _WriteSupplierProviderElement extends AutoDisposeNotifierProviderElement<
    WriteSupplier, WriteSupplierState> with WriteSupplierRef {
  _WriteSupplierProviderElement(super.provider);

  @override
  Supplier? get supplier => (origin as WriteSupplierProvider).supplier;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
