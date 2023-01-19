import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const List<int> pageContentRows = [10, 20, 50, 100];

final itemLenghtProvider = StateProvider<int>(
  (ref) => pageContentRows[0],
);

class ItemLenght extends ConsumerWidget {
  const ItemLenght({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final itemsInTable = ref.read(itemLenghtProvider.notifier);
    return Row(
      children: List.generate(
          pageContentRows.length,
          (i) => TextButton(
                onPressed: () {
                  itemsInTable.state = pageContentRows[i];
                },
                child: Text(
                  pageContentRows[i].toString(),
                  style: TextStyle(
                      color: pageContentRows[i] == itemsInTable.state
                          ? Colors.blue
                          : Colors.black),
                ),
              )),
    );
  }
}
