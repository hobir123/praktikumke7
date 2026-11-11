import 'package:flutter/material.dart';

/// Menampilkan tombol Tambah, Kurang, dan Reset.
/// Aksi tombol diterima dari parent lewat 3 callback function.
class CounterButtons extends StatelessWidget {
  final VoidCallback onAdd;
  final VoidCallback onSubtract;
  final VoidCallback onReset;

  const CounterButtons({
    super.key,
    required this.onAdd,
    required this.onSubtract,
    required this.onReset,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              onPressed: onSubtract,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
              ),
              icon: const Icon(Icons.remove),
              label: const Text('Kurang'),
            ),
            const SizedBox(width: 16),
            ElevatedButton.icon(
              onPressed: onAdd,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
              ),
              icon: const Icon(Icons.add),
              label: const Text('Tambah'),
            ),
          ],
        ),
        const SizedBox(height: 16),
        ElevatedButton.icon(
          onPressed: onReset,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
            foregroundColor: Colors.white,
          ),
          icon: const Icon(Icons.refresh),
          label: const Text('Reset'),
        ),
      ],
    );
  }
}