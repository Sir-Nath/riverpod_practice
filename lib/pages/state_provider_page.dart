import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final valueStateProvider = StateProvider<int>((ref) => 42);

class StateProviderPage extends ConsumerWidget {
  const StateProviderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<int>(valueStateProvider, (previous, next) {
      //log('StateProviderPage: $previous -> $next');
      if (next == 50) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Value is 50'),
          ),
        );
      }
    });
    return Scaffold(
        appBar: AppBar(
          title: const Text('State Provider'),
          centerTitle: true,
          actions: [
            GestureDetector(
              onTap: () {
                ref.invalidate(valueStateProvider);
              },
              child: const Icon(Icons.refresh),
            ),
            const SizedBox(
              width: 20,
            )
          ],
        ),
        body: Center(
          child: Column(
            children: [
              Text(
                'The value is ${ref.watch(valueStateProvider)}',
                style: Theme.of(context).textTheme.headline4,
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    ref.read(valueStateProvider.notifier).state++;
                  },
                  child: const Text('Increment'))
            ],
          ),
        ));
  }
}
