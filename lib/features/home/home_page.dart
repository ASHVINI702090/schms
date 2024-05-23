import 'package:chms/core/constants.dart';
import 'package:chms/utils/extensions.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(kAppName),
      ),
      body: GridView.extent(
        padding: const EdgeInsets.all(12),
        maxCrossAxisExtent: 200,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        children: [
          (
            label: "Suppliers",
            count: 5,
          ),
          (
            label: "Orders",
            count: 10,
          ),
          (
            label: "Shipments",
            count: 12,
          ),
          (
            label: "Inventory",
            count: 15,
          ),
        ]
            .map(
              (e) => Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        e.label,
                        style: context.style.titleMedium?.copyWith(
                          color: context.scheme.primary,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "${e.count}",
                        style: context.style.headlineLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
