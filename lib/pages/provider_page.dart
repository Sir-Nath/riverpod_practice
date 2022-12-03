import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final valueProvider = Provider<int>((ref)=> 42);

class ProviderPage extends ConsumerWidget {
  const ProviderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider'),
        centerTitle: true,
        actions: const [
          Icon(Icons.refresh),
          SizedBox(width: 20,)
        ],
      ),
      body: Center(
        child: Text(
          'The value is ${ref.watch(valueProvider)}',
          style: Theme.of(context).textTheme.headline4,
        ),
      )

        //Use this with the regular stateless widget
      // Consumer(
      //   builder: (BuildContext context, WidgetRef ref, Widget? child){
      //     return Center(
      //       child: Text(
      //         'The value is ${ref.watch(valueProvider)}',
      //         style: Theme.of(context).textTheme.headline4,
      //       ),
      //     );
      //   },
      // ),
    );
  }
}
